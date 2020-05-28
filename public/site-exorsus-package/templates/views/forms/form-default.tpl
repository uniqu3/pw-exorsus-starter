{$textdomain = '_translations_contact_form.php'}

<form action="{if $ajaxForm}{$config->urls->form}{else}{$page->url}{/if}" method="post" class="form form--default form-validate{if $ajaxForm} form-ajax{/if}">
    {nocache}
    {if $notices->count nocache}
    <div class="margin-bottom-small">
        <ul class="alerts list-none remove-margin remove-padding">
        {foreach $notices as $notice}
            <li class="alert alert-{$notice->className} notification is-{$notice->className} is-small">{$notice}</li>
        {/foreach}
        </ul>
    </div>
    {/if}
    {/nocache}
    <fieldset>
        <legend>{'Your personal information'|t:null:$textdomain}</legend>
        <div class="columns">
            <div class="column col-12">
                <div class="form-group">
                    <label class="form-label" for="salutation">{'Salutation'|t:null:$textdomain}</label>
                    <select name="salutation" id="salutation" class="input-select" aria-required="true" required>
                        <option value=''>{'Please select'|t:null:$textdomain}</option>
                        <option value="{'Mrs'|t:null:$textdomain}">{'Mrs'|t:null:$textdomain}</option>
                        <option value="{'Mr'|t:null:$textdomain}">{'Mr'|t:null:$textdomain}</option>
                        <option value="{'Company'|t:null:$textdomain}">{'Company'|t:null:$textdomain}</option>
                        <option value="{'Not specified'|t:null:$textdomain}">{'Not specified'|t:null:$textdomain}</option>
                    </select>
                    <span class="form-hint">{'required'|t:null:$textdomain}</span>
                </div>
            </div>
            <div class="column col-sm-12 col-6">
                <div class="form-group">
                    <label class="form-label" for="firstname">{'Firstname'|t:null:$textdomain}</label>
                    <input class="input-field" type="text" name="firstname" id="firstname" value="{$input->firstname}" placeholder="{'Firstname'|t:null:$textdomain}" />
                </div>
            </div>
            <div class="column col-sm-12 col-6">
                <div class="form-group">
                    <label class="form-label" for="lastname">{'Lastname'|t:null:$textdomain}</label>
                    <input class="input-field" type="text" name="lastname" id="lastname" value="{$input->lastname}" placeholder="{'Lastname'|t:null:$textdomain}" aria-required="true" required />
                    <span class="form-hint">{'required'|t:null:$textdomain}</span>
                </div>
            </div>
            <div class="column col-12">
                <div class="form-group">
                    <label class="form-label" for="company">{'Company'|t:null:$textdomain}</label>
                    <input class="input-field" type="text" name="company" id="company" value="{$input->company}" placeholder="{'Company'|t:null:$textdomain}" />
                </div>
            </div>
        </div>
    </fieldset>
    <fieldset>
        <legend>{'Contact information'|t:null:$textdomain}</legend>
        <div class="columns">
            <div class="column col-sm-12 col-6">
                <div class="form-group">
                    <label class="form-label" for="street">{'Street'|t:null:$textdomain}</label>
                    <input class="input-field" type="text" name="street" id="street" value="{$input->street}" placeholder="{'Street'|t:null:$textdomain}" />
                </div>
            </div>
            <div class="column col-sm-12 col-2">
                <div class="form-group">
                    <label class="form-label" for="zip">{'ZIP'|t:null:$textdomain}</label>
                    <input class="input-field" type="text" name="zip" id="zip" value="{$input->zip}" placeholder="{'ZIP'|t:null:$textdomain}" />
                </div>
            </div>
            <div class="column col-sm-12 col-4">
                <div class="form-group">
                    <label class="form-label" for="city">{'City'|t:null:$textdomain}</label>
                    <input class="input-field" type="text" name="city" id="city" value="{$input->city}" placeholder="{'City'|t:null:$textdomain}" />
                </div>
            </div>
            <div class="column col-sm-12 col-6">
                <div class="form-group">
                    <label class="form-label" for="phone">{'Phone number'|t:null:$textdomain}</label>
                    <input class="input-field" type="phone" name="phone" id="phone" value="{$input->phone}" placeholder="{'Phone number'|t:null:$textdomain}" />
                </div>
            </div>
            <div class="column col-sm-12 col-6">
                <div class="form-group">
                    <label class="form-label" for="email">{'Email'|t:null:$textdomain}</label>
                    <input class="input-field" type="email" name="email" id="email" value="{$input->email}" placeholder="{'Email'|t:null:$textdomain}" aria-required="true" required />
                    <span class="form-hint">{'required'|t:null:$textdomain}</span>
                </div>
            </div>
        </div>
    </fieldset>
    <fieldset>
        <legend>{'How can we help you?'|t:null:$textdomain}</legend>
        <div class="columns">
            <div class="column col-12">
                <div class="form-group">
                    <label class="form-label" for="message">{'Message'|t:null:$textdomain}</label>
                    <textarea class="input-field" placeholder="{'Your message'|t:null:$textdomain}" name="message" id="message" aria-required="true" required></textarea>
                    <span class="form-hint">{'required'|t:null:$textdomain}</span>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="input-checkbox is-small" for="gdpr" data-text='{'Privacy policy'|t:null:$textdomain}'>
                <input type="checkbox" value="1" name="gdpr" id="gdpr" aria-required="true" required /><i class="input-icon"></i> <span>{'I agree that my personal data will be collected, stored and used under the EU General Data Protection Regulation (GDPR) for the purpose of processing my contact request.'|t:null:$textdomain}</span>
            </label>
        </div>
        <ul class="alerts alerts-validate list-none remove-padding is-hidden"></ul>
        <div class="columns margin-vertical-medium">
            <div class="column col-12">
                <input class="input-dummy" aria-hidden="true" autocomplete="new-password" type="email" name="secondary_email" value="" />
                <input type="hidden" name="referrer" value="{$page->id}"/>
                {$session->CSRF->renderInput() nocache}
                <input type="submit" name="submit" class="btn is-primary btn-submit" value="{'Send message'|t:null:$textdomain}">
            </div>
        </div>
    </fieldset>
</form>
