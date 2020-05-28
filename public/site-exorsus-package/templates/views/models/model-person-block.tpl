<div class="model--person flex-is-row item--person">
    <div class="columns align-middle">
        <div class="column col-9 col-sm-8 col-xs-12">
            <article class="model--person__content">
                <div class="model--person__heading">
                    <h1 class="model--person__title">{$item->title} {$item->person_firstname}</h1>
                    <h2 class="model--person__position">{$item->person_position->title}</h2>
                </div>
                <div class="model--person__contact">
                    <ul class="remove-margin remove-padding list-none list--icons">
                        <li>{icon name='phone'} <span><a href="tel://{$item->person_phone|default:$global->settings_phone}">{$item->person_phone|default:$global->settings_phone}</a></span></li>
                        {if $item->person_mobile}<li>{icon name='mobile'} <span><a href="tel://{$item->person_mobile}">{$item->person_mobile}</a></span></li>{/if}
                        {if $item->person_fax}<li>{icon name='fax'} <span>{$item->person_fax}</span></li>{/if}
                        <li>{icon name='envelope-open'} <span>{mailto address=$item->person_email|default:$global->settings_email encode='hex'}</span></li>
                    </ul>
                </div>
            </article>
            {foreach $item->fields as $fld}
                {if strstr($fld->tags, 'social') && $item->get($fld->name) != ''}
                    {$person_social[] = $fld}
                {/if}
            {/foreach}
            {if isset($person_social)}
            <footer class="model--person__social">
                <ul class="list-inline social-icons">
                    {foreach $person_social as $entry}
                    <li>
                        <a href="{$item->get($entry->name)}" target="_blank" rel="noopener" aria-label="{'link to'|t} {$entry->name}" class="social-{$entry->name}">{icon name=$entry->name}</a>
                    </li>
                    {/foreach}
                </ul>
            </footer>
            {/if}
        </div>
        {if $page->option_thumbnail && $item->thumbnail != ''}
        <div class="column col-3 col-sm-4 col-xs-12 align-{$page->option_image_position->value|default:'first'}">
            <div class="model--person__media">
                <figure class="is-block is-circle model--person__image">
                    <picture>
                        <source srcset="{$item->thumbnail->crop('square=400, upscaling=0, quality=70')->webpUrl}" type="image/webp" />
                        <img loading="lazy" class="lazyload is-circle img-responsive item--image__thumbnail" {imagesize image=$item->thumbnail->crop('square=400, upscaling=0, quality=70')->httpUrl} data-src="{$item->thumbnail->crop('square=400, upscaling=0, quality=70')->url}" alt="{$item->title}" />
                    </picture>
                </figure>
            </div>
        </div>
        {/if}
    </div>
</div>
