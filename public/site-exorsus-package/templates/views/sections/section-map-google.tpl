<section class="section section--map">
    {strip}
    <div class="map"
        data-map='[{foreach $locations as $location}{
          "lat": "{$location->settings_location->lat}",
          "lng": "{$location->settings_location->lng}",
          "zoom": {$location->settings_location->zoom},
          "info": "<p><strong>{$location->settings_company_name|default:$global->settings_company_name}</strong><br />
                   {$location->settings_street|default:$global->settings_street}<br />
                   {$location->zip|default:$global->settings_zip} {$location->city|default:$global->settings_city}<br />
                   {$location->settings_phone|default:$global->settings_phone}<br />{$location->settings_email|default:$global->settings_email}</p>"
        }{if !$location@last},{/if}{/foreach}]'>
    </div>
    {/strip}
</section>
