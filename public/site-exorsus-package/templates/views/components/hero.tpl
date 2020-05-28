{if $hero->count && $page->option_disable_hero != 1}
<!-- hero -->
<header class="hero no-print" role="banner">
    <div class="swiper-container swiper-init">
        <div class="swiper-wrapper">
        {foreach $hero as $item}
        <div class="swiper-slide">
            <div class="hero--container swiper-lazy" data-background='{$item->hero_image->pia('width=1920,height=800,upscaling=0,quality=70')->url}'>
                <div class="hero--content is-flex align-middle">
                    <div class="container size-xl">
                        {if $item->hero_caption || $hero_caption}<h1 class="hero--content__title animation-hidden slide-in-left remove-margin">{$item->hero_caption|default:$hero_caption}</h1>{/if}
                        {if $item->hero_caption_byline || $hero_caption_byline}<h2 class="hero--content__byline animation-hidden slide-in-bottom animation-delay-300 remove-margin">{$item->hero_caption_byline|default:$hero_caption_byline}</h2>{/if}
                        {if $item->hero_link}<a href="{$item->hero_link->url}" class="hero--content__btn animation-hidden slide-in-bottom animation-delay-500 btn is-xlarge is-primary margin-top-large">{'find out more'|t}</a>{/if}
                    </div>
                </div>
            </div>
        </div>
        {/foreach}
        {if $hero->count > 1}
        <div class="swiper-button-next" aria-hidden="true"></div>
        <div class="swiper-button-prev" aria-hidden="true"></div>
        <div class="swiper-pagination" aria-hidden="true"></div>
        {/if}
        </div>
    </div>
</header>
<!-- hero //-->
{/if}
