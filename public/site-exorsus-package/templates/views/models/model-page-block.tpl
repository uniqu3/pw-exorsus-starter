<article class="model--page flex-is-row item--page">
    <div class="columns">
        {if $page->option_thumbnail && $item->get('preview_thumbnail|thumbnail') != ''}
        <div class="column col-4 col-sm-12 align-{$page->option_image_position->value|default:'first'} align-sm-first">
            <div class="model--page__media margin-top-small margin-bottom-medium">
                {include file='items/item-content-image.tpl' image=$item->get('preview_thumbnail|thumbnail')}
            </div>
        </div>
        {/if}
        <div class="column col-{if $page->option_thumbnail && $item->get('preview_thumbnail|thumbnail') != ''}8{else}12{/if} col-sm-12">
            <header class="model--page__headline">
                {if $item->subheading}
                    <hgroup class="remove-margin-top">
                        <h2>{$item->title}</h2>
                        <h3>{$item->subheading}</h3>
                    </hgroup>
                {else}
                    <h2>{$item->title}</h2>
                {/if}
            </header>
            <article class="model--page__content">
                {$item->get('summary|content')|strip_tags|truncate:220}
            </article>
            <footer class="model--page__meta margin-top-medium">
                <a href="{$item->url}" class="btn is-primary" aria-label="{'Read more about'|t} {$item->title}">{'read more'|t}</a>
            </footer>
        </div>
    </div>
</article>
