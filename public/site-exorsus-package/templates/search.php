<?php namespace ProcessWire;

/**
 * Search Controller Template for ProcessWire
 *
 * Searching for given phrases within "term" input
 *
 */


/**
 * =======================================
 * Input: term=(string)
 * =======================================
 */

$term = $sanitizer->text($input->q);
$results = array();

if($term) {

    $input->whitelist('q', $term);

    $term     = $sanitizer->selectorValue($term);
    $selector = "title|menutext|content|summary|subheading|seo_keywords|sections.title|sections.content|partials.title|partials.content|%=$term,parent!=1132, limit=50";

    if($user->isLoggedin()) $selector .= ", has_parent!=2";

    $results = $pages->find($selector);
}

$smarty->assign('results', $results);
