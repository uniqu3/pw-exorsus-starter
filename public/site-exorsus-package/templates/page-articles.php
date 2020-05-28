<?php namespace Processwire;
/**
 * Articles summary controller template
 * 
 * Sets a predefined number of articles matching given template
 * If given url segments match "categories/category-name"
 * return only articles matching given category
 */
$selector = ['template=page-article,limit=6,sort=-publish_from'];

if ($input->urlSegment1 == 'category' && $input->urlSegment2 != '') {
    $segment = $input->urlSegment2;
    $selector[] .= "category_articles.name={$segment}";
}

$selector = implode(',', $selector);
$hash = md5($selector);

$items = $cache->get("SITE.Articles.summary.{$hash}", $config->development ? 0 : WireCache::expireHourly, function () use ($pages, $selector) {
    $result = $pages->findMany($selector);
    return $result;
});

// Set for RSS
$this->set('items', $items);
// Assign for view
$smarty->assign('items', $items);
