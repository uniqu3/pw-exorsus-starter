{extends 'base.tpl'}
{block name='content'}
<div class="article article-main page-article">
    <time class="is-block is-relative" datetime="{$page->publish_from|date_format:'%Y-%m-%d'}">{icon name='newspaper-o' class='has-color-success'} <span class="text-xsmall"> {'published on'|t} {$page->publish_from}</span></time>
    {if $page->thumbnail}
    <div class="columns">
        {if $page->summary}
            <div class="column col-7 col-md-12">
                {$page->summary}
            </div>
            <div class="column col-5 col-md-12 align-first margin-vertical-large">
                {include file='items/item-content-image.tpl' image=$page->thumbnail}
            </div>
            <div class="column col-12">
                {$page->content}
            </div>
        {else}
            <div class="column col-7 col-md-12">
                {$page->content}
            </div>
            <div class="column col-5 col-md-12 align-first margin-vertical-large">
                {include file='items/item-content-image.tpl' image=$page->thumbnail}
            </div>
        {/if}
    </div>
    {else}
    <div class="column col-12">
        {$page->summary}
        {$page->content}
    </div>
    {/if}
    {if $page->gallery->count > 0}
    <div class="columns column-spacing items--images margin-top-xlarge">
        {foreach $page->gallery as $image}
        <div class="column{if $page->gallery->count <= 2} col-6{else} col-3{/if} col-sm-6 col-xs-12">
            {include file='items/item-gallery-image.tpl' image=$image}
        </div>
        {/foreach}
    </div>
    {/if}
</div>
{/block}
{block name='sections'}
{if $items->count}
<div class="section">
    <div class="container size-xl">
    <div class="columns column-spacing padding-top-large">
        {foreach $items as $item}
            <div class="column col-4 col-md-6 col-sm-12">
                {include file='models/model-article-card.tpl' item=$item}
            </div>
        {/foreach}
    </div>
    </div>
</div>
{/if}
{/block}
