{extends 'base.tpl'}

{block name='main'}
<form action='{$page->url}' method='post'>
    <div class="form-row row">
        <div class="col-md-6">
            <div class="form-inner marg-right-10 md-no-marg-right">
                <label>{'Username'|t}</label>
                <input type="text" id="username" name="username" placeholder="{'Username'|t}" />
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-inner marg-right-10 md-no-marg-right">
                <label>{'Password'|t}</label>
                <input type="password" id="pass" name="pass" placeholder="{'Password'|t}" />
            </div>
        </div>
    </div>
    {if $notices|count}
        <ul class="alerts no-marg no-padd no-list marg-bottom-15">
        {foreach $notices as $notice}
            <li class="alert alert-{$notice->className} marg-bottom-5">{$notice}</li>
        {/foreach}
        </ul>
    {/if}
    <div class="row form-row">
        <input type="submit" class="btn btn-submit" name="login" value="{'Login'|t}" />
    </div>
</form>
{$loginForm}
{/block}
