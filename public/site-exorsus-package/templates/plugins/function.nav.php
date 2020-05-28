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
 * Tapio Löytty, <tapsa@orange-media.fi>
 * Web: www.orange-media.fi
 *
 */
 
if(!defined("PROCESSWIRE")) die();

function smarty_function_nav($params, &$template)
{
    $smarty = $template->smarty;

    // Get root
    if(isset($params['items'])) {
        
        if($params['items'] instanceof \ProcessWire\Page || $params['items'] instanceof \ProcessWire\PageArray)
            $items = $params['items'];
        else
            $items = \ProcessWire\wire('pages')->get($params['items']); // Attempts to grab single Page
    }
    
    if(!isset($items) || $items instanceof NullPage)
        $items = \ProcessWire\wire('pages')->get('/')->children();

    // Get other params
    $max_depth = isset($params['levels']) ? (int)$params['levels'] : 100;
    $context = isset($params['context']) ? (string)$params['context'] : '';
    $collapse = isset($params['collapse']) ? true : false;
    $exclude = isset($params['exclude']) ? (string)$params['exclude'] : null;
    
    return _treeMenu($items, $max_depth, $collapse, $context, $exclude);
}

function _treeMenu($items, $max_depth = 100, $collapse = false, $context = '', $exclude = null) {

    $config = \ProcessWire\wire('config');
    $page = \ProcessWire\wire('page');
    $parents = $page->parents;
    $collection = new \ProcessWire\PageArray();
    $out = '';
    $i = '';
        
    try {

        // Test if exclude is query
        $items = $items->not($exclude);
    }
    catch(Exception $e) {

        // Nope, resulted to query exception, treat as normal exclude string
        $exclude = explode(',', $exclude);
    }

    if ($items instanceof Page || $items instanceof \ProcessWire\PageArray) {
        $collection->import($items);
    } else {
        throw new \ProcessWire\WireException("Couldn't get collection");
    }

    foreach($collection as $child) {

        if($child->protected && !$user->isLoggedin())
            continue;

        //if ($child->template == 'page-article')
        //    continue;

        if(!empty($context)) {
                    
            // Check if child exists against context
            if($child->template->hasField('context')) {
                if(!$child->context->has("value=$context"))
                    continue;
            }
            else 
                continue;
        }

        // skip pages we do not want in navigation, also should skip all children, as recursive rendering is skipped too.
        if(!is_null($exclude) && in_array($child->name, $exclude))
            continue;

        $depth = count($child->parents);
        $alias = $child->name;
        $active = false;

        // Exception for templates
        switch($child->template) {
                
            default:
                $active = ($child === $page || $parents->has($child) || \ProcessWire\wire('session')->root === $child->id);
        }
        
        $class = "level-$depth item-$alias";
        $aria = "aria-level=\"{$depth}\"";
        $s = $t = $p = '';
        
        // Check if node is active
        if($active) {
            $class .= " current";
            $aria .= ' aria-current="page"';
        }
        
        // Render icon
        if ($child->icon && !empty($child->icon->value)) {
            $path = $config->urls->icons;
            $icon = $child->icon->value;
            $i = "<svg class=\"icon icon-{$icon}\" aria-hidden=\"true\" tabindex=\"-1\"><use xlink:href=\"{$path}icons.svg#icon-{$icon}\"></use></svg>";
        }
        
        // Render children
        // $children = _getPagesByTemplateTag($child->children, 'page');
        if($child->hasChildren && !$collapse) {

            if ($depth < $max_depth) {
                
                if($sub = _treeMenu($child->children, $max_depth, $collapse, $context, $exclude)) {

                    // $t = "<span class='dd-toggle'><i class='fa fa-plus-circle' aria-hidden='true'></i></span>";
                    //$p = "<span class='dd-indicator'><i class='fa fa-angle-down' aria-hidden='true'></i></span>";

                    $class .= " parent";

                    $s = "\r\n<ul class='menu list-none remove-padding remove-margin' role='menu'>\r\n" .  $sub . '</ul>';
                }
            }
        }

        // Render item
        if ($child->template == 'sectionheader') {
            $out .= "\t<li class='$class' {$aria} role='presentation'><span class='menu-item menu-sectionheader' role='presentation' data-id='{$child->id}' data-name='{$child->name}' data-title='{$child->title}'>$i{$child->get("menutext|title|name")}</span>$t$s</li>\r\n";
        } else {
            $out .= "\t<li class='$class' {$aria} role='presentation'><a class='menu-item' href='{$child->url}' role='menuitem' data-id='{$child->id}' data-name='{$child->name}' data-title='{$child->title}'>$i{$child->get("menutext|title|name")}</a>$t$s</li>\r\n";
        }
    }

    return $out;
}
?>
