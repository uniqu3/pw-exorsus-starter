<?php namespace ProcessWire;

if ($page->option_exclude_blocks != 1)
    $value->append($pages->get("template=app-settings")->blocks);

foreach ($value as $block) {

    if (!$block->hasAccess())
        continue;

    switch ($block->template) {

        case 'block-articles':

            $selector = ['template=page-article,sort=-publish_from,limit=3'];

            if ($block->category_articles)
                $selector[] .= "category_articles={$block->category_articles}";

            $selector = implode(',', $selector);
            $hash = md5($selector);
            $items = $cache->get("SITE.Articles.{$hash}", $config->development ? 0 : WireCache::expireHourly, function () use ($pages, $selector) {
                $result = $pages->findMany($selector);

                return $result;
            });

            $smarty->assign('items', $items);
            break;
        
        case 'block-article-categories':

            $selector = 'template=category,parent=1068';
            $hash = md5($selector);
            $items = $cache->get("SITE.Articles.categories.{$hash}", $config->development ? 0 : WireCache::expireHourly, function () use ($pages, $selector) {
                $result = $pages->findMany($selector);

                return $result;
            });

            $smarty->assign('items', $items);
            break;

        default:
            break;
    }

    // Assign block type
    $smarty->assign('block', $block);
    $smarty->assign('name', $block->name);

    try {
        echo $smarty->render($block->template->name, true);
    } catch (SmartyEngineRenderException $e) {

        echo $smarty->render('block', true);
    }
}
