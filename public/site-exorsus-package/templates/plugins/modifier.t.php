<?php
/**
 * Smarty plugin
 * @package PROCESSWIRE
 */

/**
 * Smarty modifier plugin
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

function smarty_modifier_t($text, $context = null, $textdomain = '_translations.php')
{
    if(!\ProcessWire\wire('languages')) return $text; 
    if(!$language = \ProcessWire\wire('user')->language) return $text; 
    if(!$language->id) return $text;

    $config = \ProcessWire\wire('config');
    $textdomain = $config->paths->templates . $textdomain;

    // Writer
    if($config->advanced) {
        call_user_func(function() use ($text, $context, $textdomain) {
                
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
        });
    }

    // Reader
    $value = $language->translator()->getTranslation($textdomain, $text, $context);
    if($value === "=") 
        $value = $text;
    else 
        $value = htmlspecialchars($value, ENT_QUOTES, 'UTF-8', false);
    
    return $value;
}
