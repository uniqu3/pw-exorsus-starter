<?php

namespace Processwire;

/*
 * Contact form Template controller
 *
 * This template is processing the submitted form input
 * and processing validation checks.
 * If validation has passed submitted input is set to a given email.
 * After succesfull submission page is redirected.
 *
 */

$smarty->assign('CSRFtokenName', $this->session->CSRF->getTokenName());
$smarty->assign('CSRFtokenValue', $this->session->CSRF->getTokenValue());

$textdomain = $config->paths->templates.'_translations_contact_form.php';

$to = [];

// Set recipients if these were set in page options
if ($page->option_form_recipients->count) {
    foreach ($page->option_form_recipients as $recipient) {
        $to[] = $recipient->person_email;
    }
} else {
    $to[] = $global->settings_email;
}

$data = [];

if ($input->post->submit) {
    // Test XSS (session riding)
    $session->CSRF->validate();

    if ($input->secondary_email) {
        throw new WireException('You shall not pass, you Mr. Robot');
    }
    // Check against required
    $required = [
        'salutation' => __('Salutation', $textdomain),
        'lastname' => __('Last name', $textdomain),
        'email' => __('Email', $textdomain),
        'message' => __('Message', $textdomain),
        'gdpr' => __('GDPR', $textdomain),
    ];

    // Fetch valid data from POST
    foreach ($input->post as $key => $value) {
        // Required by field
        if (array_key_exists($key, $required) && !$value) {
            if (is_object($required[$key])) {
                $language = $user->language;

                if (!$label = $required[$key]->get('label'.$language->id)) {
                    $label = $required[$key]->label;
                }
            } else {
                $label = $required[$key];
            }

            $page->error(__('Please insert a value for field', $textdomain).": $label");
        } else {
            $data[$key] = $value;
        }
    }
    foreach ($input->post as $key => $value) {
        if (in_array($key, $required) && !$value) {
            $page->error(__('Please insert a value:', $textdomain)." $key");
        }
    }

    // If no notification errors, proceed and build message
    if (!$notices->hasErrors()) {
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
        $html .= '</p>';
        $html .= '<h3>Anfrage</h3>';
        $html .= '<p>';
        $html .= $input->post->message;
        $html .= '</p>';
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

        $session->message(__('Thank you for your message. We will reply as soon as possible.', $textdomain));
        $session->redirect($page->url);
    }
}