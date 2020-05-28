<?php namespace ProcessWire;
/**
 * Initial configuration of the site
 * Controller for language settings, theme paths and smarty assigns
 */
//setlocale(LC_ALL, "de_DE.UTF8");

/** 
 * =======================================
 * Define global variables
 * =======================================
 */

$textdomain = $config->paths->templates . '_translations.php';
$lang = $user->language; // Returns null if not installed, so all good.
// Root page
$root = $pages->get("/");
// Settings page
$global = $pages->get("template=app-settings");
// Country
$ContinentsAndCountries = $modules->get('ContinentsAndCountries');
$country = $ContinentsAndCountries->findBy('countries', array('name'), array('code' => $global->settings_country));

$smarty->assign('lang', $lang);
$smarty->assign('country', $country[0]->name);
$smarty->assign('root', $root);
$smarty->assign('global', $global);
$smarty->assign('countries', $ContinentsAndCountries);

/**
 * =======================================
 * Clear session notices
 * =======================================
 */

$session->removeNotices();

/**
 * =======================================
 * Config
 * =======================================
 */

$config->urls->form = $pages->get('1189')->httpUrl;

$config->urls->images = $config->urls->templates . 'assets/images/';
$smarty->assign('images', $config->urls->images);

$config->urls->icons = $config->urls->templates . 'assets/icons/';
$smarty->assign('icons', $config->urls->icons);

$config->urls->symbols = $config->urls->templates . 'assets/svg/symbols/';
$smarty->assign('symbols', $config->urls->symbols);

$config->urls->css = $config->urls->templates . 'assets/css/';
$smarty->assign('css', $config->urls->css);

$config->urls->js = $config->urls->templates . 'assets/js/';
$smarty->assign('js', $config->urls->js);

/**
 * =======================================
 * Protected Pages settings
 * =======================================
 */
include_once('_protected-config.php');

/**
 * =======================================
 * Theme Settings
 * =======================================
 */
include_once('_theme-config.php');
