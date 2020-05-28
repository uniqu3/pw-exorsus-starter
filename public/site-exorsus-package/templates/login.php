<?php namespace Processwire;

/**
 * Login controller template
 * Handles frontend login process
 */

if(isset($input->username) && isset($input->pass)) {

    try {

        $username = $sanitizer->username($input->username);
        $pass = $input->pass;

        if($user = $session->login($username, $pass)) {

            $session->message(__('You were successfully logged in.'));
            $session->redirect($page->url);
        }
        else {

            throw new WireException( __('Login Failed. Wrong username or password.') );
        }

    } catch(WireException $e) {

        $page->error($e->getMessage());
    }
}
