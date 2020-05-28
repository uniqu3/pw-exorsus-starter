<?php namespace Processwire;
/**
 * Controller settings for protected pages
 */


$logout = $pages->get('template=logout')->url;
$smarty->assign('logout', $logout);

if ($user->isLoggedin() && $page->prohibited) {
    $session->message(__('Unfortunatelly you do not have permission to view this page.'));
    $session->redirect($pages->get('template=login')->url);
}

if ($page->protected && !$user->isLoggedin()) {
    $session->message(__('This page is protected. You must log in to view it.'));
    $session->redirect($pages->get('template=login')->url);
}
