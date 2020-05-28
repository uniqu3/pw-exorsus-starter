<article class="card has-border has-shadow-medium remove-shadow-hover model--page item--page item--equal">
    <header class="card-header model--page__headline">
        {if $item->subheading}
            <hgroup>
                <h2>{$item->title}</h2>
                <h3>{$item->subheading}</h3>
            </hgroup>
        {else}
            <h2>{$item->title}</h2>
        {/if}
    </header>
    {if $page->option_thumbnail && $item->get('preview_thumbnail|thumbnail') != ''}
    <div class="card-media model--page__media">
        {include file='items/item-content-image.tpl' image=$item->get('preview_thumbnail|thumbnail')}
    </div>
    {/if}
    <article class="card-content model--page__content">
        {$item->get('summary|content')|strip_tags|truncate:220}
    </article>
    <footer class="card-footer model--page__meta text-center">
        <a href="{$item->url}" class="btn is-primary" aria-label="{'Read more about'|t} {$item->title}">{'read more'|t}</a>
    </footer>
</article>
