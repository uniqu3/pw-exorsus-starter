<?php
/**
 * Smarty plugin
 * @package PROCESSWIRE
 */

/**
 * Smarty {breadcrumbs} function plugin
 *
 * Type:     function<br>
 * Name:     breadcrumbs<br>
 * Purpose:  prints out a page trail for processwire breadcrumbs
 *
 * @author IDT Media
 * Authors:
 *
 * Goran Ilic, <ja@ich-mach-das.at>
 * Web: www.ich-mach-das.at
 *
 * Tapio Lรถytty, <tapsa@orange-media.fi>
 * Web: www.orange-media.fi
 *
 * @param array                    $params   parameters
 * @param Smarty_Internal_Template $template template object
 * @param exclude_root             boolean|null
 * @param delimiter                string|null
 * @return string|null
 */

if(!defined("PROCESSWIRE")) die();

function smarty_function_breadcrumbs($params, &$template)
{
    $smarty = $template->smarty;
    $root   = \ProcessWire\wire('pages')->get('/');

    // params
    $exclude_root = isset($params['exclude_root']) ? $params['exclude_root'] : null;
    $delimiter    = isset($params['delimiter']) ? $params['delimiter'] : ' ';
    $start_text   = isset($params['starttext']) ? $params['starttext'] : null;

    // Get root
    if(isset($params['root'])) {
        $root = $params['root'];
    } else {
        $root = \ProcessWire\wire('pages')->get('/');
    }

    return _pageTrail($root, $exclude_root, $delimiter, $start_text);
}

function _pageTrail($root, $exclude_root = null, $delimiter, $start_text) {

    $page = \ProcessWire\wire('page');
    $out   = null;

    $out .= "<div class='breadcrumbs'>";

    if ($start_text)
        $out .= "<span class='breadcrumb-starttext'>{$start_text}</span>";

    foreach($page->parents()->append($page) as $parent) {

        if ($exclude_root != 0 && $parent == $root)
            continue;

        if ($parent == $page) {
            $out .= "<span class='breadcrumb current'>{$parent->get("menutext|title|name")}</span>";
        } else {
            $out .= "<a class='breadcrumb' href='{$parent->url}'>{$parent->get("menutext|title|name")}</a> {$delimiter} ";
        }
    }

    $out .= "</div>";

    return $out;

}
?>
