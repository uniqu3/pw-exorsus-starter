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

function smarty_function_country($params, &$template)
{
    if(!\ProcessWire\wire('modules')->isInstalled('ContinentsAndCountries'))	
        throw new WireException('Moudle ContinentsAndCountries not installed.');

    $smarty = $template->smarty;
    $ContinentsAndCountries = \ProcessWire\wire('modules')->get('ContinentsAndCountries');

    if (isset($params['code']) && $params['code'])
        $code = $params['code'];

    $country = $ContinentsAndCountries->findBy('countries', array('name'), array('code' => $code));
    
    
    if( isset($params['assign']) ){	
        $smarty->assign(trim($params['assign']), $country[0]->name);
        return;
    }
    
    return $country[0]->name;
    
} // end of main
