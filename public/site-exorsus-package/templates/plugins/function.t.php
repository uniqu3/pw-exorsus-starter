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

function smarty_function_t($params, &$template)
{
    $smarty = $template->smarty;
    $config = \ProcessWire\wire('config');
    $out = null;
    
    $text       = !empty($params['text']) ? $params['text'] : '';
    $textdomain = !empty($params['textdomain']) ? $params['textdomain'] : '_translations.php';
    $context    = !empty($params['context']) ? $params['context'] : null;
    $path       = $config->paths->templates . $textdomain;
        
    _write_textdomain($text, $context, $path);

    if($context)
        $out = \ProcessWire\_x($text, $context, $path);
    else
        $out = \ProcessWire\__($text, $path);	
    
    if(isset($params['assign'])){
        $smarty->assign(trim($params['assign']),$out);
        return;
    }
    
    return $out;
}

function _write_textdomain($text, $context, $textdomain) {
        
    $tpl = !is_null($context) ? "_x('$text', '$context');" : "__('$text');";
    $res = false;
    $handler = @fopen($textdomain, 'a+');
    
    while ($line = fgets($handler)) {

        if(strstr($line, $tpl)) {
            $res = true;
            break;
        }
    }

    if(!$res) 
        fwrite($handler, $tpl . PHP_EOL);	

    fclose($handler);
    
    return $res;
}
