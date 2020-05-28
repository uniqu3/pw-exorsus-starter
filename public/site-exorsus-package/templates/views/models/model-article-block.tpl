<article class="card flex-is-row model--article model--article__block item--article margin-bottom-large" itemprop="mainEntity" itemscope itemtype="http://schema.org/Article">
    <div class="is-hidden">
        <span itemprop="author">{$global->settings_company_name}</span>
        <span itemprop="publisher" itemscope itemtype="http://schema.org/Organization">
            <span itemprop="name">{$global->settings_company_name}</span> 
            <span itemprop="logo" itemscope itemtype="https://schema.org/ImageObject">
                <img itemprop="url" src="{$config->siteLogo}" alt="{$global->settings_company_name} Logo" title="{$global->settings_company_name} Logo" />
            </span>
        </span>
    </div>
    <div class="columns">
        {if $page->option_thumbnail && $item->get('preview_thumbnail|thumbnail') != ''}
        <div class="column col-3 col-lg-4 col-sm-12">
            <div class="card-media model--article__media margin-bottom-medium">
                <figure class="is-block remove-margin" itemprop="image" itemscope itemtype="https://schema.org/ImageObject">
                    <picture>
                        <source srcset="{$item->thumbnail->pia('width=560,height=480,upscaling=0,quality=70')->webpUrl}" type="image/webp" />
                        <img itemprop="url" loading="lazy" class="lazyload img-responsive item--image__thumbnail blur-hover" width="560" height="480" data-src="{$item->thumbnail->pia('width=560,height=480,upscaling=0,quality=70')->url}" alt="{$image->description|default:$image->name}" />
                        <meta itemprop="width" content="560" />
                        <meta itemprop="height" content="480" />
                    </picture>
                </figure>
            </div>
        </div>
        {/if}
        <div class="column{if $page->option_thumbnail && $item->get('preview_thumbnail|thumbnail') != ''} col-9 col-lg-8{/if} col-sm-12">
            <header class="model--article__headline has-border">
                {if $item->subheading}
                    <hgroup class="remove-margin-top">
                        <h2 itemprop="headline">{$item->title}</h2>
                        <h3>{$item->subheading}</h3>
                    </hgroup>
                {else}
                    <h2>{$item->title}</h2>
                {/if}
                <time itemprop="datePublished" class="model--article__date is-block is-relative" datetime="{$item->publish_from|date_format:'%Y-%m-%d'}">{icon name='newspaper-o' class='has-color-success'} <span class="text-xsmall"> {'published on'|t} {$item->publish_from}</span></time>
            </header>
            <div class="model--article__content">
                {$item->summary|default:$item->content|strip_tags|truncate:250}
            </div>
            <footer class="model--article__meta margin-top-medium">
                <a href="{$item->url}" class="btn is-primary is-small" aria-label="{'Read more about'|t} {$item->title}"><span>{'continue reading'|t}</span> {icon name='angle-double-right'}</a>
            </footer>
        </div>
    </div>
</article>

