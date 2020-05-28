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

function smarty_function_js($params, &$template)
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
        
            foreach(glob("$fn/*.js") as $js_file) {
                            
                $files[] = substr($js_file, strlen($path));
            }		
        }
        else {
        
            $files[] = $base . $src; // Assume single file	
        }	
    }
        
    $url = AllInOneMinify::JS($files); // Causes wireException if no files
        
    $out = '<script src="'.$url.'"></script>' . "\n";
    
    if(isset($params['href']) && $params['href'])
        $out = $url;
    
    if( isset($params['assign']) ){	
        $smarty->assign(trim($params['assign']), $out);
        return;
    }
    
    return $out;
    
} // end of main

?>
