<?php

namespace Processwire;

/*
 * Default theme settings used for
 * SEO, metatags and default view controls
 *
 */

/*
 * =======================================
 * Theme Settings
 * =======================================
 */

// -- SITE/COMPANY -- //

// Theme color used for mobile devices
$config->siteColor = '#2b8dde';
// Standard logo
$config->siteLogo = $config->urls->images.'static/logoipsum.svg';

// --- STRUCTURED DATA --- //
$jsonld = wire()->modules->get('MarkupJsonLDSchema');
// Set defaults from global settings
$jsonldOptions = [
    'logo' => $config->siteLogo,
    'organization' => $global->settings_company_name,
    'street_address' => $global->settings_street,
    'address_locality' => $global->settings_city,
    'postcode' => $global->settings_zip,
    'address_country' => $country[0]->name,
    'telephone' => $global->settings_phone,
    'fax' => $global->settings_fax,
    'latitude' => $global->settings_locations->first->settings_location->lat,
    'longitude' => $global->settings_locations->first->settings_location->lng,
];

switch ($page->template) {
    case 'page-article':
        $jsldRender = [$jsonld->render('Article')];
        break;
    default:
        $jsldRender = [
            $jsonld->render('LocalBusiness', $jsonldOptions),
            $jsonld->render('WebPage'),
            $jsonld->render('BreadcrumbList'),
        ];
        break;
}

$smarty->assign('jsonld', $jsldRender);

if (empty($page->seo_image)) {
    $page->seo_image = $config->siteLogo;
}

// --- AGENCY --- //
$config->agencyName = 'idea arts kreativagentur';
$config->agencyUrl = 'https://www.ichmachdas.eu';
$config->agencyTitle = 'idea arts kreativagentur';

// --- DEFAULTS --- //

// Default hero image(s)
$parent = $page->parent != $root ? $page->parent : $global;

$hero = $page->hero_items->count > 0 ? $page->hero_items
    : ($parent->hero_items->count > 0 ? $parent->hero_items
        : $global->hero_items);

$hero_caption = $page->hero_caption ? $page->hero_caption
    : ($page->parent->hero_caption ? $page->parent->hero_caption
        : $global->hero_caption);

$hero_caption_byline = $page->hero_caption_byline ? $page->hero_caption_byline
    : ($page->parent->hero_caption_byline ? $page->parent->hero_caption_byline
        : $global->hero_caption_byline);

$smarty->assign('hero', $hero);
$smarty->assign('hero_caption', $hero_caption);
$smarty->assign('hero_caption_byline', $hero_caption_byline);

// Aside options

// viewed page
$view = $page;
// change view per template
if ('page-article' == $page->template) {
    $view = $page->parent;
}

$blocks = $view->blocks ? $view->blocks : $global->blocks;
// Is it enabled for page or globally
$blocks_enable = $view->option_enable_aside ? $view->option_enable_aside : $global->option_enable_aside;
// disable per page option even if enabled globally
if ($view->option_disable_aside) {
    $blocks_enable = 0;
}
// where to align aside
$blocks_align = $view->option_align ? $view->option_align->value : $global->option_align->value;
// exclude globals?
if ($blocks_enable) {
    $blocks_exclude = $view->option_exclude_blocks;
}
// append globals
if (1 != $blocks_exclude && 1 == $blocks_enable) {
    $blocks->append($pages->get('template=app-settings')->blocks);
}

$smarty->assign('blocks', $view);
$smarty->assign('blocks_enable', $blocks_enable);
$smarty->assign('blocks_align', $blocks_align);

// Social media
$social = [];
foreach ($global->fields as $item) {
    if (strstr($item->tags, 'social') && '' != $global->get($item->name)) {
        $social[] = $item;
    }
}

$smarty->assign('social', $social);