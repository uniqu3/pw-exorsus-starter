<?php namespace ProcessWire;
/**
 * Init file to add site specific hooks.
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
  * DOCUMENTATION: https://github.com/ryancramerdesign/ProcessWire/blob/master/wire/core/HookEvent.php
  *                http://processwire.com/apigen/class-HookEvent.html
  *                https://processwire.com/api/hooks/captain-hook/
  *
  */

if(!defined("PROCESSWIRE")) die();

include_once('templates/_functions.php');

//=============================================================
// Page
//=============================================================

/**
 * Ensure that SEO title field is filled at least with global title.
 */
wire()->addHookBefore('Pages::save', function($event) {

    $page = $event->arguments(0);

    // SEO title
    if($page->template->hasField('seo_title'))
    {
        if($page->seo_title == '')
            $page->seo_title = $page->title;
    }

    // Clear filter cache
    if($page->template->hasField('hide_extra'))
    {
        wire('cache')->delete("SITE.filters.$page");
    }
});

/**
 * Add new virtual method to Page objects to get page options.
 */
wire()->addHook('Page::options', function($event) {

    $page = $event->object;
    $key = $event->arguments(0);
    $default = $event->arguments(1);

    if($settings = @json_decode($page->settings, true))
    {
        $value = $settings[$key] ?: null;

        if(!is_null($value)) {

            $event->return = $value;
            return;
        }
    }

    $event->return = $default ?: null;
});

/**
 * Add new virtual method to Page objects to get page metadata.
 */
wire()->addHook('Page::metadata', function($event) {

    $page = $event->object;
    $context = $event->arguments(0) ?: 'list';

    $options = false;
    if($content = @file_get_contents(wire('config')->paths->templates . "/metadata/{$page->template}.{$context}.json"))
        $options = @json_decode($content, true);

    if($options === false)
        return;

    $data = [];
    foreach ($options as $fieldName => $options) {

        $field= $page->fields->getField($fieldName,true); // Get field in context

        $row = [];
        $row['type'] = substr(strtolower($field->type), 9);
        $row['icon'] = $field->icon;
        $row['label'] = $field->label;
        $row['value'] = $options['subfield'] ? $page->{$fieldName . '.' . $options['subfield']} : $page->$fieldName;

        if(empty($row['value']))
            continue;

        $data[] = (object)$row;
    }

    $event->return = $data;
});

/**
 * Add new virtual method to Page objects to check if user has access on it.
 */

wire()->addHook('Page::hasAccess', function($event) {
    $page   = $event->object;
    $user   = $event->arguments(0) ?: wire('user');
    $access = false;

    if($page->template->hasField('roles'))
    {
        foreach($page->roles as $role)
        {
            if($user->hasRole($role))
            {
                $access = true;
                break;
            }
        }
    }
    else
        $access = true;

    $event->return = $access;
});

/**
 * Encode E-Mail address in content and summary fields
 */

wire()->addHookBefore('Page::render', function($event) use ($input) {

    $page          = $event->object;
    $pattern       = "/[_a-z0-9-]+(?:\.[_a-z0-9-]+)*@[a-z0-9-]+(?:\.[a-z0-9-]+)*(?:\.[a-z]{2,3})/i";
    
    $page->content = preg_replace_callback(
        $pattern,
        function ($e) {
            return encode_email($e);
    }, $page->content);

    $page->summary = preg_replace_callback(
        $pattern,
        function ($e) {
            return encode_email($e);
    }, $page->summary);

});


//=============================================================
// Language
//=============================================================

/**
 * Adds property "code" to Language objects, presentation of sort language code.
*/
wire()->addHookProperty('Language::code', function($event) {
    
    $language = $event->object;
    $code     = explode('_', $language->getLocale());
    
    $event->return = $code[0];
});

//=============================================================
// Formbuilder
//=============================================================

/**
 * Add additional markup end of render method
 */
wire()->addHookAfter('FormBuilderProcessor::render', function($event) {

    $processor 	= $event->object;
    $message = $processor->successMessage;

    $out = "<div id='FormBuilderAttributesFor_{$processor->formName}'";

    if(ctype_digit("$message")) {

        $page = wire('pages')->get((int)$message);
        if($page->id) $url = $page->httpUrl;

        $out .= " data-redirect-to='$url'";
    }
    else {

        $out .= " data-message='$message'";
    }

    $out .= "></div>\n";

    $event->return .= $out;
});

//=============================================================
// Markup
//=============================================================

/**
 * Cancels PageRender::renderPage() and SmartyEngine::render()
 * Provides fastest uncached output possible.
 *
 * All variables set to TemplateFile::set($key, $value) are extracted to scope
 */
wire()->addHookAfter('Page::render', function($event) use ($input) {

    $page = $event->object;

    if(!$page->hasAccess() && $page->id !== wire('config')->http404PageID)
        throw new Wire404Exception();

    if(!$format = $input->markup)
        return;

    $of = $page->of();
    if(!$of) $page->of(true);

    $tpl = $page->output(true);
    $tpl->set('markup', $format);
    $tpl->render();

    $fuel = $tpl->getArray();
    extract($fuel);

    $event->cancelHooks = true;

    switch($format) {

        case 'json':
            $data = new \ArrayObject;
            $data[] = $page;
            $data[] = call_user_func(function() use ($items) {

                if($c = substr($items, 0, 1)) {
                    if($c == '{' || $c == '[')
                        return json_decode($items);
                }

                return $items;
            });

            header("Content-type: application/json");
            $event->return = $modules('Pages2JSON')->encode($data);
            return;

        case 'rss':
            $modules('MarkupRSS')->render($items);
            return;

        default:
            throw new \InvalidArgumentException("Invalid markup format");
    }

}, ['priority' => 99]);

//=============================================================
// Templates
//=============================================================

/**
 * Template logic
 *
 */
wire()->addHook('PageArray::filterByTemplateTag', function($event) {

    $collection = $event->object;
    $tag = $event->arguments(0);

    $items = new PageArray();
    foreach(wire('templates')->getAll() as $tpl) {

        if(strstr($tpl->tags, $tag))
            $items->import($collection->find("template=$tpl"));
    }

    $event->return = $items;
});
