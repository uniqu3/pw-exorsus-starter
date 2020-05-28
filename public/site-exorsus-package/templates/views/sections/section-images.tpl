{extends 'section.tpl'}
{block name='section_footer'}
<div class="columns column-spacing items--images">
    {foreach $section->gallery as $image}
    <div class="column{if $section->gallery->count <= 2} col-6{else} col-4{/if} col-sm-6 col-xs-12">
        {include file='items/item-gallery-image.tpl' image=$image}
    </div>
    {/foreach}
</div>
{/block}

