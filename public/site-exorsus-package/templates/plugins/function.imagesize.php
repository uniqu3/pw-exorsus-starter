<?php

/**
 * Smarty plugin
 * @package PROCESSWIRE
 */

/**
 * Smarty function plugin
 *
 * Type:     function<br>
 * Name:     imagesize<br>
 * Purpose:  Read image meta from provided url and reutrns html size attributes
 *
 * @author IDT Media
 * Authors:
 *
 * Goran Ilic, <ja@ich-mach-das.at>
 * Web: www.ich-mach-das.at
 *
 */

if (!defined("PROCESSWIRE")) die();

function smarty_function_imagesize($params, &$template)
{
    $smarty = $template->smarty;
    $path = isset($params['image']) ? $params['image'] : '';
    $out = '';

    if ($path) {
        $size = getimagesize($path);
        $out = $size[3];
    }

    if (isset($params['assign'])) {
        $smarty->assign(trim($params['assign']), $out);
        return;
    }

    return $out;
}
