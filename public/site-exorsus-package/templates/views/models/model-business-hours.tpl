{foreach $entry->settings_business_hours as $business}
<div class="model-business-hours is-flex align-between text-small">
    <span class="model-business-hours-day padding-right-small">{$business->day|t}</span> <span class="model-business-hours-time padding-left-small">{$business->time}</span>
</div>
{/foreach}
