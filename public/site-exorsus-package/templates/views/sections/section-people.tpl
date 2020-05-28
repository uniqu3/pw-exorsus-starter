{extends 'section.tpl'}
{block name='section_footer'}
<div class="columns column-spacing padding-top-medium items--people">
    {foreach $items as $item}
        {if $section->option_type == '2'}
        <div class="column col-12">
            {include file='models/model-person-block.tpl' item=$item page=$section}
        </div>
        {else}
        <div class="column{if $section->type == 'section'} col-3 col-lg-4{else} col-6{/if} col-md-6 col-sm-12">
            {include file='models/model-person-card.tpl' item=$item page=$section}
        </div>
        {/if}
    {/foreach}
</div>
{/block}
