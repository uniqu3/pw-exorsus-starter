<?php namespace Processwire;

/**
 * Article detail controller template
 * 
 * Returns latest articles excluding current viewed article
 */

$selector = "template=page-article,limit=3,sort=-publish_from,id!={$page}";
$hash = md5($selector);
$items = $cache->get("SITE.Article.summary.{$hash}", $config->development ? 0 : WireCache::expireHourly, function () use ($pages, $selector) {
    $result = $pages->findMany($selector);
    return $result;
});

$smarty->assign('items', $items);
