{extends 'block.tpl'}
{block name='block_content'}
<div class="card-content">
{if $page->fields->get('name^=settings_') != ''}
    {include file='models/model-address.tpl' entry=$block}
{else}
    {foreach $global->settings_locations as $location}
        {include file='models/model-address.tpl' entry=$location}
    {/foreach}
{/if}
</div>
{/block}
