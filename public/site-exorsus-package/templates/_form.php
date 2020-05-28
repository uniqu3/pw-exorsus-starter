<?php

namespace Processwire;

/**
 * Form controller for ajax driven contact forms.
 */
$textdomain = $config->paths->templates.'_translations_contact_form.php';
/**
 * Recipient address.
 */
$to = [];

// Check for page where form was submitted
$referrer = $pages->get($input->post->referrer);
// set recipients if referrer page has recipients set
if ($referrer->option_form_recipients->count) {
    foreach ($referrer->option_form_recipients as $recipient) {
        $to[] = $recipient->person_email;
    }
} else {
    $to[] = $global->settings_email;
}

/**
 * Process form submit.
 */
$data = [];

// Response
$response->status = 'unknown';
$response->message = '';

if ($config->ajax) {
    // Check against required
    $errors = [];
    $message = [];

    // Test XSS (session riding)
    //$session->CSRF->validate();
    if ($session->CSRF->hasValidToken()) {
        $response->status = 'success';
    } else {
        $response->status = 'error';
        $message = 'CSRF check failed! Try refreshing your Browser.';
    }

    // Check against required
    $required = [
        'lastname' => __('Last name', $textdomain),
        'email' => __('Email', $textdomain),
        'gdpr' => __('GDPR', $textdomain),
    ];

    // Fetch valid data from POST
    foreach ($input->post as $key => $value) {
        // Required by field
        if (array_key_exists($key, $required) && (!$value || (is_array($value) && ('0' == implode('', $value))))) {
            if (is_object($required[$key])) {
                $language = $user->language;

                if (!$label = $required[$key]->get('label'.$language->id)) {
                    $label = $required[$key]->label;
                }
            } else {
                $label = $required[$key];
            }

            $message[] = __('Please insert a value for this field', $textdomain).": $label";
            $errors[] = $key;
        } else {
            $data[$key] = $value;
        }
    }

    if ($input->secondary_email) {
        throw new WireException('You shall not pass, you Mr. Robot');
    }
    if (count($errors)) {
        $response->status = 'error';
    }

    switch ($response->status) {
        case 'success':

            $mailer = wireMail();

            $html = '<p>Es erfolgte eine neue Kontaktanfrage.</p>';
            $html .= '<h3>Kontakt Information</h3>';
            $html .= '<p>';
            if (!empty($input->post->salutation)) {
                $html .= '<strong>Anrede:</strong> '.$input->post->salutation.'<br />';
            }
            if (!empty($input->post->firstname)) {
                $html .= '<strong>Vorname:</strong> '.$input->post->firstname.'<br />';
            }
            $html .= '<strong>Nachname:</strong> '.$input->post->lastname.'<br />';
            if (!empty($input->post->company)) {
                $html .= '<strong>Firma:</strong> '.$input->post->company.'<br />';
            }
            $html .= '<strong>E-Mail Adresse:</strong> '.$input->post->email.'<br />';
            if (!empty($input->post->phone)) {
                $html .= '<strong>Telefonnummer:</strong> '.$input->post->phone.'<br />';
            }
            $html .= '</p>';
            $html .= '<h3>Anschrift</h3>';
            $html .= '<p>';
            if (!empty($input->post->street)) {
                $html .= '<strong>Straße:</strong> '.$input->post->street.'<br />';
            }
            if (!empty($input->post->zip)) {
                $html .= '<strong>PLZ:</strong> '.$input->post->zip.'<br />';
            }
            if (!empty($input->post->city)) {
                $html .= '<strong>Stadt:</strong> '.$input->post->city.'<br />';
            }
            if (!empty($input->post->message)) {
                $html .= '</p>';
                $html .= '<h3>Anfrage</h3>';
                $html .= '<p>';
                $html .= $input->post->message;
                $html .= '</p>';
            }
            if (!empty($input->post->gdpr)) {
                $html .= '<p>DSGVO wurde am '.date('j. M, Y, H:i').' Akzeptiert</p>';
            }

            $mailer->from($input->post->email, $input->post->lastname);
            $mailer->subject('Neue Kontaktanfrage');
            $mailer->bodyHTML($html);
            foreach ($to as $receiver) {
                $mailer->to(); // Resets previous receivers, else it just adds
                $mailer->to($receiver);
                $mailer->send();
            }

            $message[] = __('Thank you for you request. We will get back to you as soon as possible.', $textdomain);

            $response->message = $message;

            break;

        case 'error':
            $response->message = $message;
            break;
    }
}

header('Content-type: application/json');
echo json_encode($response);