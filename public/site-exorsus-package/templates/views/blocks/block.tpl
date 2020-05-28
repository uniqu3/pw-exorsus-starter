{*
 Block Template
 This is used for views that used within Sidebar.
 Controller field for selectable block entries is data_blocks
*}
{block name='block'}
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
        {$block->content}
    </div>
    {/block}
    {block name='block_footer'}{/block}
</aside>
<!-- aside item //-->
{/block}
