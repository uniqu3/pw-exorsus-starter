<!DOCTYPE html>
<html lang="{$lang->code}" dir="ltr">
    <head>
        {include file='components/head.tpl'}
    </head>
    <body class="page-{$page->name} template-{$page->template->name}" id="top">
        {nocache}
        {if $notices|count}
        <!-- notifications -->
            <div class="notifications no-print">
                <ul class="alerts list-none remove-padding remove-margin">
                {foreach $notices as $notice}
                    <li class="alert alert-{$notice->className} notification is-{$notice->className} is-small">{$notice} <button class="btn-clear">&times;</button></li>
                {/foreach}
                </ul>
            </div>
            <!-- notifications //-->
        {/if}
        {/nocache}
        <div class="section--header">
            {block name='meta'}
            <!-- section meta information -->
            <div class="section--meta">
                <div class="container padding-vertical-small">
                    <div class="columns align-middle align-end">
                        <div class="column col-xs-12 text-left">
                            {include file='models/model-social-icons.tpl'}
                        </div>
                        <div class="column col-3 col-md-6 col-xs-12 no-print">
                            {include file='forms/form-search-header.tpl' nocache}
                        </div>
                    </div>
                </div>
            </div>
            <!-- section meta information //-->
            {/block}
            {block name='brand'}
            <!-- section brand identity -->
            <div class="section--brand">
                <div class="container size-xl">
                    <div class="columns align-middle padding-vertical-large">
                        <div class="column col-6 col-sm-12 is-flex align-sm-center">
                            <a class="brand--link" href="{$root->httpUrl}" title="{'Go to Homepage'|t}">
                                <img class="brand--logo" src="{$images}static/logoipsum.svg" width="150" height="71" alt="{$global->settings_company_name} Logo" title="{$global->settings_company_name} Logo" />
                            </a>
                        </div>
                        <div class="column col-6 col-sm-12 is-flex align-sm-center align-end">
                            <ul class="list-none margin-top-sm-small brand--quick-contact is-inline-block">
                                <li title="{'Phone number'|t}">{icon name='phone' class='margin-right-small'} <a href="tel://{$global->settings_phone}">{$global->settings_phone}</a></li>
                                <li title="{'Email address'|t}">{icon name='envelope-open-o' class='margin-right-small'} {mailto address=$global->settings_email encode='hex'}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- section brand identity //-->
            {/block}
            {block name='navigation'}
            <!-- navigation -->
            <nav class="section--navigation no-print" aria-label="{'Main menu'|t}" role="navigation">
                <button id="menu-trigger" aria-controls="main-menu" class="hamburger navigation--trigger show-md show-md-inline-block">
                    <span aria-hidden="true"></span>
                    <span aria-hidden="true"></span>
                    <span aria-hidden="true"></span>
                    <span class="is-assistive">{'Navigation open'|t}</span>
                </button>
                <ul id="main-menu" class="nav-main is-flex align-center" role="menubar">
                    {nav exclude='template=page-article'}
                </ul>
            </nav>
            <!-- navigation //-->
            {/block}
            {block name='hero'}
                {include file='components/hero.tpl'}
            {/block}
        </div>
        {block name='main'}
        <!-- main -->
        <main class="section--main" role="main">
            {block name='article'}
            <!-- main content -->
            <article class="section section--main-content">
                <div class="container size-xl">
                    {block name='heading'}
                        {if $page->option_disable_headline != '1'}
                        <div class="heading heading-main padding-bottom-medium text-{$page->option_text_align->value|default:'left'}">
                            {if $page->subheading}
                                <hgroup>
                                    <h1>{$page->title}</h1>
                                    <h2>{$page->subheading}</h2>
                                </hgroup>
                            {else}
                                <h1>{$page->title}</h1>
                            {/if}
                        </div>
                        {/if}
                    {/block}
                    {block name='content_container'}
                        {* switch view if sidebar is enabled *}
                        {if $blocks_enable == 1}
                            <div class="columns">
                                <div class="column col-8 col-md-12">
                                    {include file='components/content.tpl'}
                                </div>
                                <div class="column col-4 col-md-12 align-{$blocks_align|default:'last'} margin-top-large">
                                    {block name='aside'}
                                    {$blocks->render('blocks')}
                                    {/block}
                                </div>
                            </div>
                        {else}
                            {include file='components/content.tpl'}
                        {/if}
                    {/block}
                </div>
            </article>
            <!-- main content //-->
            {/block}
            {* load sections content *}
            {block name='sections'}
            {if $page->sections->count}
            <!-- sections -->
                {foreach $page->sections as $section}
                    {$section->render(null, ['renderer' => $page, 'type' => 'section'])}
                {/foreach}
            <!-- sections //-->
            {/if}
            {/block}
        </main>
        <!-- main //-->
        {/block}
        {block name='footer'}
        <!-- footer -->
        <footer class="section--footer" role="contentinfo">
            <div class="container size-xl">
            {include file='components/footer.tpl'}
            </div>
        </footer>
        <!-- footer //-->
        {/block}
        <a href="{$page->httpUrl}#top" title="{'Back to top'|t}" id="back-top" class="btn-back-top has-scale-x2 no-print">{icon name='angle-double-up'}<span class="is-assistive">{'Back to top'|t}</span></a>

        {block name='include_js'}
        <script src="{$js}vendor.min.js"></script>
        <script src="{$js}app.min.js"></script>
        <script>
        API.init({
            "rootUrl": "{$config->urls->httpRoot}"
        });
        </script>
        {/block}
        {include file='components/scripts.tpl'}
    </body>
</html>
