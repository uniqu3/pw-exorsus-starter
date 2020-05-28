{if $social|count}
<div class="model--social-icons no-print">
    <!-- social media links -->
    <ul class="list-inline social-icons">
        {foreach $social as $entry}
        <li>
            <a href="{$global->get($entry->name)}" target="_blank" rel="noopener" aria-label="{'link to'|t} {$entry->name}" class="social-{$entry->name}">{icon name=$entry->name}</a>
        </li>
        {/foreach}
    </ul>
    <!-- social media links //-->
</div>
{/if}
