{extends 'base.tpl'}
{block name='content' nocache}
<div class="article article-main">
    {if $results->count}
    <h3>{'Your search results'|t}</h3>
    <ul class="remove-margin remove-padding list-none">
    {foreach $results as $result}
        <li>
            <a class="display-block" href="{$result->url}"><strong>{$result->get('menutext|title')}</strong></a>
            <p>{$result->get('summary|content')|strip_tags|truncate:'200'}</p>
        </li>
    {/foreach}
    </ul>
    {else}
        <p>{'Your search did not return any results. Please try another search phrase'|t}</p>
    {/if}
</div>
{/block}
