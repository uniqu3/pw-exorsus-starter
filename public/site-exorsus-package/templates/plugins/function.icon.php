<?php
/**
 * Smarty plugin
 * @package PROCESSWIRE
 */

/**
 * Smarty function plugin
 *
 * Type:     function<br>
 * Name:     <name><br>
 * Purpose:  <description>
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
 */

if(!defined("PROCESSWIRE")) die();

function smarty_function_icon($params, &$template)
{
    $smarty = $template->smarty;
    $config = \ProcessWire\wire('config');
    $path = $config->urls->symbols;

    $icon = isset($params['name']) ? $params['name'] : '';
    $class = isset($params['class']) ? $params['class'] : '';

    $out = "<svg class=\"icon icon-{$icon} {$class}\" aria-hidden=\"true\" tabindex=\"-1\"><use xlink:href=\"{$path}symbol-defs.svg#icon-{$icon}\"></use></svg>";

    if( isset($params['assign']) ){
        $smarty->assign(trim($params['assign']),$out);
        return;
    }

    return $out;
}
?>
