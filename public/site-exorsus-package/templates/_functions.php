<?php

if (!function_exists('encode_email')) {
    function encode_email($e)
    {
        $output = '';
        for ($i = 0; $i < strlen($e[0]); $i++) {
            $output .= '&#' . ord($e[0][$i]) . ';';
        }

        return $output;
    }
}
