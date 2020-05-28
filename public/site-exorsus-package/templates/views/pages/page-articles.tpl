{extends 'base.tpl'}
{block name='content' append}
    {if $items->count}
    <div class="columns column-spacing padding-top-large">
        {foreach $items as $item}
            {if $page->option_type == '2'}
            <div class="column col-12">
                {include file='models/model-article-block.tpl' item=$item}
            </div>
            {else}
            <div class="column col-{if $blocks_enable == 1}6{else}4{/if} col-md-6 col-sm-12">
                {include file='models/model-article-card.tpl' item=$item}
            </div>
            {/if}
        {/foreach}
    </div>
    {$items->renderPager()}
    {/if}
{/block}
