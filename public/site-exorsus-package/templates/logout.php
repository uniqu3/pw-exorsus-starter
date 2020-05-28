<?php namespace ProcessWire;

/**
 * Logout controller template
 */

if ($user->isLoggedin()) {
    $session->logout();
    $session->message(__('You were successfully logged out.'));
}

$session->redirect($root->url);
