{*
 Section Template
 This template is used for sections within a page
 that controll the view of different data or content.
 Controller field for this template is "sections" and controller template "site/template/_section.php"
*}
{block name='section'}
<article class="section {$section->template|default:'section-content'} type-{$section->type}" data-name='{$name}' id="section-{$name}">
    <div class="container size-xl">
        {block name='section_heading'}
        {if $section->option_disable_headline != '1' && $section->title != ''}
        <div class="heading heading-main padding-bottom-medium text-{$section->option_text_align->value|default:'left'}">
            {if $section->subheading}
                <hgroup>
                    <h1>{$section->title}</h1>
                    <h2>{$section->subheading}</h2>
                </hgroup>
            {else}
                <h1>{$section->title}</h1>
            {/if}
        </div>
        {/if}
        {/block}
        {block name='section_content'}
        {if $section->content}
        <div class="article article-main">
            {if $section->thumbnail}
            <div class="columns">
                <div class="column{if $section->thumbnail} col-{$section->option_column_size|default:12}{/if} col-md-12">
                    {$section->content}
                </div>
                {if $section->thumbnail}
                <div class="column col-{12 -$section->option_column_size} col-md-12 align-{$section->option_image_position->value|default:'last'} margin-vertical-large">
                    {include file='items/item-content-image.tpl' image=$section->thumbnail}
                </div>
                {/if}
            </div>
            {else}
                {$section->content}
            {/if}
        </div>
        {/if}
        {/block}
        {block name='section_footer'}{/block}
    </div>
</article>
{/block}
