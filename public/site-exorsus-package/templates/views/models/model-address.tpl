<address class="model--address">
    <span class="model--address__name is-block h4">{$entry->settings_company_name|default:$global->settings_company_name}</span>
    <ul class="model--address__information list-none list--icons remove-margin remove-padding">
        <li class="model--address__location">
            {icon name='map-marker'} <span>{$entry->settings_street|default:$global->settings_street}<br />
            {$entry->settings_zip|default:$global->settings_zip}, {$entry->settings_city|default:$global->settings_city}<br />
            {country code=$entry->settings_country|default:$global->settings_country}</span>
        </li>
        <li class="model--address__phone">
            {icon name='phone'} <span><a href="{$entry->settings_phone|default:$global->settings_phone}">{$entry->settings_phone|default:$global->settings_phone}</a></span>
        </li>
        {if $global->settings_fax}
        <li class="model--address__fax">
            {icon name='fax'} <span>{$entry->settings_fax|default:$global->settings_fax}</span>
        </li>
        {/if}
        <li class="model--address__email">
            {icon name='envelope-open-o'} <span>{mailto address=$entry->settings_email|default:$global->settings_email encode='hex'}</span>
        </li>
    </ul>
</address>
