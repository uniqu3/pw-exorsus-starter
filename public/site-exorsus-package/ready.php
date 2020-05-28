<?php namespace ProcessWire;

if (!defined("PROCESSWIRE")) die();

require_once __DIR__ . '/templates/vendor/autoload.php';

use \JeroenDesloovere\VCard\VCard;
use \QR\QRCode;

/**
 * =======================================
 * Make sure Global Settings links to proper page.
 * =======================================
 */

if ($page->template == 'admin' && $page->name == 'global-settings')
    $input->get->id = $pages->get("/global-settings/")->id;

/**
 * =======================================
 * Ensure that selected fields get default values.
 * =======================================
 */

wire()->addHookBefore('ProcessPageEdit::execute', function($event) {

    $page = $event->object->getPage();

    // Ensure that SEO Title is always populated
    if ($page->template->hasField('seo_title') && $page->seo_title == '') {
        $page->seo_title = $page->title;
    }

    // Create a VCF File if person_vcf Field exists
    if ($page->template->hasField('person_vcf')) {
        
        $vcard   = new VCard();
        $global  = wire()->pages->get("/global-settings/");
        $country = wire()->modules->get('ContinentsAndCountries')->findBy('countries', array('name'), array('code' => $global->settings_country));

        if ($page->person_name != '' && $page->person_firstname != '')
            $vcard->addName($page->person_name, $page->person_firstname, '', '', '');
        
        $vcard->addCompany($global->settings_company_name);

        if ($page->person_position != '')
            $vcard->addJobtitle($page->person_position->title);
        if ($page->person_email != '')
            $vcard->addEmail($page->person_email);
        if ($page->person_phone != '')
            $vcard->addPhoneNumber($page->person_phone, 'PREF;WORK');
        if ($page->person_mobile != '')
            $vcard->addPhoneNumber($page->person_mobile, 'CELL');
        if ($page->person_fax != '')
            $vcard->addPhoneNumber($page->person_fax, 'FAX');

        $vcard->addAddress(null, null, $global->settings_street, $global->settings_city, null, $global->settings_zip, __($country[0]->name));
        $vcard->addURL($global->settings_url);

        if (is_file($page->filesManager->path . $page->person_image))
            $vcard->addPhoto($page->filesManager->path . $page->person_image);

        $vcard->setSavePath($page->filesManager->path);
        $vcard->setFilename('person-vcard');
        $vcard->save();

        $page->person_vcf = $page->filesManager->path . 'person-vcard.vcf';

    }

    // Create a QR Code image if qr_image Field exists
    
    if ($page->template->hasField('qr_image')) {

        $qr = QRCode::getMinimumQRCode($page->httpUrl, QR_ERROR_CORRECT_LEVEL_L);
        $im = $qr->createImage(18, 12, 0x004F9F);
        
        ob_start();
        imagegif($im);
        imagedestroy($im);
        
        $img = ob_get_contents();
        ob_end_clean();

        
        if ($img) {
            file_put_contents($page->filesManager->path . 'person-qr-image.gif', $img);
            $page->qr_image = $page->filesManager->path . 'person-qr-image.gif';
        }
    }
});
