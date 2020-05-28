<meta charset="utf-8" />
<link href="{$css}app.min.css" rel="stylesheet" type="text/css" />
<link href="{$css}vendor.min.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="HandheldFriendly" content="true" />
<meta name="language" content="{$lang->code}" />
<meta name="geo.region" content="{country code=$global->settings_country}" />
<meta name="geo.placename" content="{$global->settings_street}, {$global->settings_zip}, {$global->settings_city}, {$country}" />
<meta name="geo.position" content="{$global->settings_locations->first->settings_location->lat};{$global->settings_locations->first->settings_location->lng}" />
<meta name="ICBM" content="{$global->settings_locations->first->settings_location->lat},{$global->settings_locations->first->settings_location->lng}" />
<meta name="application-name" content="{$global->settings_company_name}"/>
<link href="{$page->httpUrl}" rel="canonical" />
{if $config->urls->next != ''}<link href="{$config->urls->next}" rel="next" />{/if}
{if $config->urls->prev != ''}<link href="{$config->urls->prev}" rel="prev" />{/if}
<base href="{$page->httpUrl}" />
<!-- icons -->
<meta name="msapplication-TileImage" content="{$icons}mstile-144x144.png" />
<link rel="apple-touch-icon" sizes="57x57"   href="{$icons}apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="114x114" href="{$icons}apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="72x72"   href="{$icons}apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="144x144" href="{$icons}apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="120x120" href="{$icons}apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="152x152" href="{$icons}apple-touch-icon-152x152.png" />
<link rel="icon" type="image/png" sizes="32x32" href="{$icons}favicon-32x32.png" />
<link rel="icon" type="image/png" sizes="16x16" href="{$icons}favicon-16x16.png" />
<!-- colours -->
<meta name="msapplication-TileColor" content="{$config->siteColor}" />
<meta name="theme-color" content="{$config->siteColor}" />
<!-- seo -->
{if $page->seo}
    {$page->seo->render}
{/if}
<!-- ld+json -->
{if $jsonld|@count}
    {foreach $jsonld as $schema}{if !empty($schema)}
    <script type="application/ld+json">{$schema}</script>
    {/if}{/foreach}
{/if}
{block name='head_section'}{/block}
