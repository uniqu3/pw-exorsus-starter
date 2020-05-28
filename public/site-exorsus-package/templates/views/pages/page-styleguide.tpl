{extends 'base.tpl'}
{block name='hero'}{/block}
{block name='article'}
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
    </div>
    <div class="container size-xl">
    {include file='framework.tpl'}
    </div>
{/block}
