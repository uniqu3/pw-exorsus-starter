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
 
function smarty_function_get_template_vars($params, &$template)
{
    $smarty = $template->smarty;
    $tpl_vars = $smarty->getTemplateVars();

    $str = '<pre>';
    foreach( $tpl_vars as $key => $value ) {

        if( is_object($value) ) {
            $str .= "$key = ".get_class($value)." Object<br/>";
        }
        else if( is_array($value) ) {
            $str .= "$key = Array (".count($value).")<br/>";
        }
        else {
            $str .= "$key = ".htmlentities(trim($value))."<br/>";
        }
    }
    $str .= '</pre>';

    if( isset($params['assign']) ){
        $smarty->assign(trim($params['assign']),$str);
        return;
    }
    
    // echo $template->template_resource;
    
    return $str;
}
?>
