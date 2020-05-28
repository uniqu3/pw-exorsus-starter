{extends 'block.tpl'}
{block name='block_content'}
<div class="card-content">
    <ul class="list-none list--icons list--block">
    {foreach $block->option_pages as $link}
        <li>
            {icon name='angle-right'} <span><a href="{$link->url}"> {$link->get('menutext|title')}</a></span>
        </li>
    {/foreach}
    </ul>
</div>
{/block}

