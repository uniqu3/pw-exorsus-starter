<?php namespace ProcessWire;
/**
 * Redirect Controller Template for ProcessWire
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

/*****************************************************************
 NOTE: needs target _blank, _self, etc
 Fields: external_url (type=URL), internal_url (type=Page)
 Priority: external_url => internal_url -> child
*****************************************************************/

// Redirect to external URL if given
if($page->external_url)
    $session->redirect($page->external_url);

// Redirect to Page if selected
if($page->internal_url)
    $session->redirect($page->internal_url->url());

// Redirect to first child
if($page->numChildren)
    $session->redirect($page->child()->url());

// Cannot redirect, launch error console
throw new WireException('Failed to redirect anywhere!');
