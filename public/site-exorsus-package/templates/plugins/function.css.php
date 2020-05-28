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

function smarty_function_css($params, &$template)
{
    if(!\ProcessWire\wire('modules')->isInstalled('AllInOneMinify'))	
        throw new WireException('Moudle AllInOneMinify not installed.');

    $smarty = $template->smarty;

    $base = isset($params['base']) ? trim($params['base'], '/') . '/' : '';
    $source = isset($params['source']) ? trim($params['source']) : array();
    
    $templates_path = \ProcessWire\wire('config')->paths->templates;
    $path = $templates_path . $base;
    $files = array();
    
    // Parse source
    $sources = explode(',', $source);
    foreach($sources as $src) {
    
        $src = trim($src);
        $fn = $path . ltrim($src, '/');
        
        if(is_dir($fn)) {
        
            foreach(glob("$fn/*.css") as $css_file) {
                            
                $files[] = substr($css_file, strlen($path));
            }
            
            foreach(glob("$fn/*.less") as $less_file) {
                            
                $files[] = substr($less_file, strlen($path));
            }			
        }
        else {
        
            $files[] = $base . $src; // Assume single file	
        }	
    }
    
    $url = AllInOneMinify::CSS($files); // Causes wireException if no files
        
    $stylesheet = '<link rel="stylesheet" type="text/css" href="'.$url.'" />' . "\n";
    
    if(isset($params['href']) && $params['href'])
        $stylesheet = $url;
    
    if( isset($params['assign']) ){	
        $smarty->assign(trim($params['assign']), $stylesheet);
        return;
    }
    
    return $stylesheet;
    
} // end of main

?>
