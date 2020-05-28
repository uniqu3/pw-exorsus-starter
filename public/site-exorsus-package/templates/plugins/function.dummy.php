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
 
// if(!defined("PROCESSWIRE")) die(); 
 
function smarty_function_dummy($params, &$template)
{
	$smarty = $template->smarty;
	$out = null;
	
	// Plugin code here

	if( isset($params['assign']) ){
		$smarty->assign(trim($params['assign']),$out);
		return;
	}
	
	return $out;
}
?>
