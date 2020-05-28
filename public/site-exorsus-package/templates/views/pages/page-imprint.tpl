{extends 'base.tpl'}
{block name='content' append}
<div class="section section--agency">
    <h2>{'Concept, design, development & service'|t}</h2>
    <p>&copy; {$smarty.now|date_format:'%Y'} {$config->agencyName} &mdash; {t text='All rights reserved'}</p>
    <div class="columns">
        <div class="column col-auto col-sm-12">
            <a href="{$config->agencyUrl}" rel="noopener" target="_blank" class="is-block margin-bottom-large margin-top-medium margin-right-large" title="{'Service by'|t} {$config->agencyName}">
                <img src="{$images}static/promotional/ideaarts-kreativagentur-logo.svg" width="300" alt="{$config->agencyName} Logo" title="{'Service by'|t} {$config->agencyName}" />
            </a>
        </div>
        <div class="column col-sm-12">
            <address class="model--address" itemscope itemtype="http://schema.org/LocalBusiness">
                <span class="model--address__name h4 is-block" itemprop="name">{$config->agencyName}</span>
                <ul class="model--address__information list-none list--icons remove-margin remove-padding">
                    <li class="model--address__location" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">{icon name='map-marker'}
                        <span><span itemprop="streetAddress">Fischerweg 14</span><br />
                        <span itemprop="postalCode">9551</span>, <span itemprop="addressLocality">Bodensdorf<br />
                        Austria</span></span>
                    </li>
                    <li class="model--address__phone">
                        {icon name='phone'} <span><a href="tel://+436643521029"><span itemprop="telephone">+43 (0) 664 35 210 29</span></a></span>
                    </li>
                    <li class="model--address__email">
                        {icon name='envelope-open-o'} <span>{mailto address='ja@ichmachdas.eu' extra='itemprop="email"' encode='hex'}</span>
                    </li>
                </ul>
            </address>
        </div>
    </div>
</div>
{/block}
