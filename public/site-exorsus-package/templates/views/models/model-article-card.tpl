<article class="card has-border model--article item--article item--equal" itemprop="mainEntity" itemscope itemtype="http://schema.org/Article">
    <div class="is-hidden">
        <span itemprop="author">{$global->settings_company_name}</span>
        <span itemprop="publisher" itemscope itemtype="http://schema.org/Organization">
            <span itemprop="name">{$global->settings_company_name}</span> 
            <span itemprop="logo" itemscope itemtype="https://schema.org/ImageObject">
                <img itemprop="url" src="{$config->siteLogo}" alt="{$global->settings_company_name} Logo" title="{$global->settings_company_name} Logo" />
            </span>
        </span>
    </div>
    {if $page->option_thumbnail && $item->get('preview_thumbnail|thumbnail') != ''}
    <div class="card-media model--article__media">
        <figure class="is-block remove-margin" itemprop="image" itemscope itemtype="https://schema.org/ImageObject">
            <picture>
                <source srcset="{$item->thumbnail->pia('width=560,height=480,upscaling=0,quality=70')->webpUrl}" type="image/webp" />
                <img itemprop="url" loading="lazy" class="lazyload img-responsive item--image__thumbnail blur-hover" width="560" height="480" data-src="{$item->thumbnail->pia('width=560,height=480,upscaling=0,quality=70')->url}" alt="{$image->description|default:$image->name}" />
                <meta itemprop="width" content="560" />
                <meta itemprop="height" content="480" />
            </picture>
        </figure>
    </div>
    {/if}
    <header class="card-header model--article__headline has-border">
        {if $item->subheading}
            <hgroup>
                <h2 itemprop="headline">{$item->title}</h2>
                <h3>{$item->subheading}</h3>
            </hgroup>
        {else}
            <h2>{$item->title}</h2>
        {/if}
        <time itemprop="datePublished" class="model--article__date is-block is-relative" datetime="{$item->publish_from|date_format:'%Y-%m-%d'}">{icon name='newspaper-o' class='has-color-success'} <span class="text-xsmall"> {'published on'|t} {$item->publish_from}</span></time>
    </header>
    <div class="card-content model--article__content text-small">
        {$item->summary|default:$item->content|strip_tags|truncate:250}
    </div>
    <footer class="card-footer model--article__meta">
        <a href="{$item->url}" class="btn is-primary is-small" aria-label="{'Read more about'|t} {$item->title}"><span>{'continue reading'|t}</span> {icon name='angle-double-right'}</a>
    </footer>
</article>
