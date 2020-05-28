
{extends 'section.tpl'}
{block name='section_footer'}
<div class="columns column-spacing grid-xl">
    {foreach $items as $item}
        {if $section->option_type == '2'}
        <div class="column col-12">
            {include file='models/model-article-block.tpl' item=$item page=$section}
        </div>
        {else}
        <div class="column col-4 col-xs-12">
            {include file='models/model-article-card.tpl' item=$item page=$section}
        </div>
        {/if}
    {/foreach}
</div>
{/block}

