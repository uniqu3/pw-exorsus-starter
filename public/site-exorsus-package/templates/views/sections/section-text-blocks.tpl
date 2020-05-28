{extends 'section.tpl'}
{block name='section_content'}
{if $section->option_text_blocks}
<div class="article article-main">
    <div class="columns">
    {foreach $section->option_text_blocks as $block}
        <div class="column col-6 col-md-12">
            {$block->alpha}
        </div>
        <div class="column col-6 col-md-12">
            {$block->beta}
        </div>
    </div>
    {/foreach}
</div>
{/if}
{/block}
{block name='section_footer'}{/block}

