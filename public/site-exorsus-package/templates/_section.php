<?php namespace Processwire;

/**
 * Sections controller template
 * Output is based on a section template name matching.
 * Template views are set in /site/templates/views/sections
 * where section.tpl is main view template.
 */

// Return if user has no access
if (!$page->hasAccess())
    return;

switch ($page->template) {

    case 'section-map':

        $locations = $page->option_map == 1 ? $page->settings_locations : $global->settings_locations;
        $smarty->assign('locations', $locations);

    case 'section-people':

        $selector = ['template=item-person,sort=sort'];

        if ($page->category_people)
            $selector[] .= "category_people={$page->category_people}";

        if ($page->option_people->count)
            $selector[] .= "id={$page->option_people}";

        $selector = implode(',', $selector);
        $hash = md5($selector);
        $items = $cache->get("SITE.People.{$hash}", $config->development ? 0 : WireCache::expireHourly, function () use ($selector, $pages) {
            $result = $pages->findMany($selector);

            return $result;
        });

        $smarty->assign('items', $items);
        break;

    case 'section-articles':
        
        $limit = $page->option_limit ? $page->option_limit : '6';
        $selector = ["template=page-article,sort=-publish_from,limit={$limit}"];

        if ($page->category_articles)
            $selector[] .= "category_articles={$page->category_articles}";

        $selector = implode(',', $selector);
        $hash = md5($selector);
        $items = $cache->get("SITE.Articles.summary.{$hash}", $config->development ? 0 : WireCache::expireHourly, function () use ($selector, $pages) {
            $result = $pages->findMany($selector);

            return $result;
        });

        $smarty->assign('items', $items);
        break;

    default:
        break;
}

// Set template type handling section by PageTables field
$page->type = $options['type'];

// Assign block type
$smarty->assign('name', $page->name);
$smarty->assign('section', $page);

// Redirect if current renderer is not the page containg PageTables values
$redirect = $pages->findOne("sections|partials={$page->name}");

if ($options['renderer'] != $redirect) {
    $session->redirect($redirect->url . '#section-' . $page->name);
}




