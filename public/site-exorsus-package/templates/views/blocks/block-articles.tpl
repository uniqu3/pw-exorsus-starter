{extends 'block.tpl'}
{block name='block'}
{if $items->count > 0}
<!-- aside item -->
<aside class="card has-shadow-small block {$block->template|default:'block-content'}" data-name='{$name}'>
    {block name='block_heading'}
    {if $block->option_disable_headline != '1'}
    <div class="heading heading-aside card-header remove-padding-bottom text-{$block->option_text_align->value|default:'left'}">
        {if $block->subheading}
            <hgroup>
                <h2>{$block->title}</h2>
                <h3>{$block->subheading}</h3>
            </hgroup>
        {else}
            <h2>{$block->title}</h2>
        {/if}
    </div>
    {/if}
    {/block}
    {block name='block_content'}
    <div class="card-content">
        {foreach $items as $item}
            {include file='models/model-article-list.tpl'}
        {/foreach}
    </div>
    {/block}
    {block name='block_footer'}{/block}
</aside>
<!-- aside item //-->
{/if}
{/block}
