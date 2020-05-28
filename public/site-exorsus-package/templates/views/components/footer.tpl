<div class="columns padding-vertical-xlarge">
    <nav class="column col-3 col-sm-12 col-md-6" aria-label="{'Footer menu'|t}" role="navigation">
        <ul class="nav-footer no-print" role="menubar">
            {nav levels='1'}
        </ul>
    </nav>
    <div class="column col-6 col-sm-12 col-md-6">
        <div class="columns">
        {foreach $global->settings_locations as $location}
            {if $global->settings_locations->count > 1}
                <div class="column col-6 col-lg-12">
                {include file='models/model-address.tpl' entry=$location}
                </div>
            {else}
                <div class="column col-12">
                {include file='models/model-address.tpl' entry=$location}
                </div>
            {/if}
        {/foreach}
        </div>
    </div>
    <div class="column col-3 col-sm-12 col-md-12">
        {if $global->settings_business_hours}
        <div class="model--business-hours margin-bottom-medium">
            <h3 class="remove-margin-top h4">{'Our business hours'|t}</h3>
            {include file='models/model-business-hours.tpl' entry=$global}
        </div>
        {/if}
        {include file='models/model-social-icons.tpl'}
    </div>
</div>
<div class="columns padding-bottom-medium">
    <div class="column col-8 col-sm-12 align-sm-first align-last site--copyright">
        <small>Copyright &copy; {$smarty.now|date_format:'%Y'} {$global->settings_company_name} &mdash; {'Service by'} <a target="_blank" rel="noopener" title="{$config->agencyTitle}" href="{$config->agencyUrl}">{$config->agencyName}</a></small>
    </div>
    <div class="column col-4 col-sm-12 site--promotional padding-top-sm-small no-print">
        <img src="{$images}static/promotional/design-made-in-austria_inverted.svg" class="no-print" width="170" height="23" alt="DESIGN Made in Austria Logo" title="DESIGN Made in Austria" />
    </div>
</div>
