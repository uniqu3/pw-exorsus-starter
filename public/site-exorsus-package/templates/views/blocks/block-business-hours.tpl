{extends 'block.tpl'}
{block name='block_content'}
<div class="card-content">
    {if $block->settings_business_hours->count}
        {include file='models/model-business-hours.tpl' entry=$block}
    {else}
        {include file='models/model-business-hours.tpl' entry=$global}
    {/if}
</div>
{/block}
