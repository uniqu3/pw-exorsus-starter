{* assign content for the view *}
{block name='content'}
<div class="article article-main">
    {if $page->thumbnail}
    <div class="columns">
        <div class="column{if $page->thumbnail} col-{$page->option_column_size|default:12}{/if} col-md-12">
            {$page->content}
        </div>
        {if $page->thumbnail}
        <div class="column col-{12 -$page->option_column_size} col-md-12 align-{$page->option_image_position->value|default:'last'} margin-vertical-large">
            {include file='items/item-content-image.tpl' image=$page->thumbnail}
        </div>
        {/if}
    </div>
    {else}
        {$page->content}
    {/if}
</div>
{/block}

{* assign content partials for the view *}
{block name='content_partials'}
{if $page->partials->count > 0}
<!-- content sections -->
{foreach $page->partials as $partial}
    {$partial->render(null, ['renderer' => $page, 'type' => 'content'])}
{/foreach}
<!-- content section //-->
{/if}
{/block}
