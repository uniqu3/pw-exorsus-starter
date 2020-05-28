{extends 'block.tpl'}
{block name='block_content'}
<div class="card-content">
    <ul class="list-none list--icons list--block">
    {foreach $items as $category}
        <li>
            {icon name='ticket'} <span><a href="{$pages->get(1073)->url}category/{$category->name}"> {$category->title}</a></span>
        </li>
    {/foreach}
    </ul>
</div>
{/block}
