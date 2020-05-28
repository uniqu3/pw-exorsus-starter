{extends 'section.tpl'}
{block name='section_footer'}
<div class="columns column-spacing items--pages">
    {foreach $section->option_pages as $item}
        {if $section->option_type == '2'}
        <div class="column col-12">
            {include file='models/model-page-block.tpl' item=$item page=$section}
        </div>
        {else}
        <div class="column{if $section->option_pages->count > 2} col-4{else} col-6{/if} col-md-6 col-sm-12">
            {include file='models/model-page-card.tpl' item=$item page=$section}
        </div>
        {/if}
    {/foreach}
</div>
{/block}

