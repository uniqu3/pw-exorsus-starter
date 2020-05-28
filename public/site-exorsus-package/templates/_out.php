<?php namespace ProcessWire;
/**
 * Main markup Controller Template for ProcessWire
 *
 * Adds capability to do 301 redirects to external URL, internal URL
 * or by default first child of page controller is used with.
 * if redirect fails wireExceptions is thrown.
 *
 * Copyright:
 *
 * IDT Media - Goran Ilic & Tapio Löytty
 * Web: www.i-do-this.com
 * Email: hi@i-do-this.com
 *
 *
 * Authors:
 *
 * Goran Ilic, <ja@ich-mach-das.at>
 * Web: www.ich-mach-das.at
 *
 * Tapio Löytty, <tapsa@orange-media.fi>
 * Web: www.orange-media.fi
 *
 */

/**
 * =======================================
 * Modules: ViewEngineController, Wire2JSON
 * Input: markup=json,html
 * =======================================
 */

switch ($page->template->contentType) {

    case 'json':
    case 'xml':
    case 'txt':
        break;

    default:
        header("Content-type: text/html");
        echo $smarty->render();
}
