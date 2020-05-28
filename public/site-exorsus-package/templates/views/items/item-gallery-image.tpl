<figure class="item--image">
    <a href="{$image->httpUrl}" class="item--image__link js-image">
        <picture>
            <span class="item--image__overlay is-flex align-middle align-center">{icon name='search' class='has-scale-x2'}</span>
            <source srcset="{$image->pia('width=420,height=340,upscaling=0,quality=70')->webpUrl}" type="image/webp" />
            <img loading="lazy" class="lazyload img-responsive item--image__thumbnail" width="420" height="340" data-src="{$image->pia('width=420,height=340,upscaling=0,quality=70')->url}" alt="{$image->description|default:$image->name}" />
        </picture>
        {if $image->description}
        <figcaption>{$image->description}</figcaption>
        {/if}
    </a>
</figure>
