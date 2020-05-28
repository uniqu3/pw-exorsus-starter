<figure class="item--image" data-aos='zoom-in' data-aos-duration='500' data-aos-delay='100'>
    <picture>
        <source srcset="{$image->contain('square=630, upscaling=0, quality=70')->webpUrl}" type="image/webp" />
        <img loading="lazy" class="lazyload img-responsive item--image__thumbnail" {imagesize image=$image->contain('square=630, upscaling=0, quality=70')->httpUrl} data-src="{$image->contain('square=630, upscaling=0, quality=70')->url}" alt="{$page->title}" />
    </picture>
    {if $image->description}
    <figcaption>{$image->description}</figcaption>
    {/if}
</figure>
