<article class="model--article item--article" itemprop="mainEntity" itemscope itemtype="http://schema.org/Article">
    <div class="is-hidden">
        <span itemprop="author">{$global->settings_company_name}</span>
        <span itemprop="publisher" itemscope itemtype="http://schema.org/Organization">
            <span itemprop="name">{$global->settings_company_name}</span> 
            <span itemprop="logo" itemscope itemtype="https://schema.org/ImageObject">
                <img itemprop="url" src="{$config->siteLogo}" alt="{$global->settings_company_name} Logo" title="{$global->settings_company_name} Logo" />
            </span>
        </span>
    </div>
    <a href="{$item->url}" class="model--article__headline is-block" aria-label="{'Read more about'|t} {$item->title}">
        {if $item->subheading}
            <hgroup>
                <h2 itemprop="headline">{$item->title}</h2>
                <h3>{$item->subheading}</h3>
            </hgroup>
        {else}
            <h2>{$item->title}</h2>
        {/if}
        <time itemprop="datePublished" class="model--article__date is-block is-relative" datetime="{$item->publish_from|date_format:'%Y-%m-%d'}">{icon name='newspaper-o' class='has-color-success'} <span class="text-xsmall"> {'published on'|t} {$item->publish_from}</span></time>
    </a>
</article>
