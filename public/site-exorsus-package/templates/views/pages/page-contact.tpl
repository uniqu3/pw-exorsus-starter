{extends 'base.tpl'}
{block name='content' append}
    <div class="page-contact-form">
        {include file='forms/form-default.tpl' ajaxForm=$page->option_ajax_form nocache}
    </div>
{/block}
