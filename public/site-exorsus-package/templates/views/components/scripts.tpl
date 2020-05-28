{block name='include_js' append}
<script>
let cookie = {
    "message": "{'Cookies support the provision and optimization of this website. By using this website, you agree to our use of cookies.'|t}",
    "dismiss": "{'dismiss'|t}",
    "deny": "{'deny'|t}",
    "allow": "{'accept'|t}",
    "link": "{'Further information and opposition'|t}",
    "href": "{$pages->get(1094)->httpUrl}",
    "background": "{$config->siteColor}"
};
</script>
<script>
{literal}
window.addEventListener("load", function(){
    window.cookieconsent.initialise({
        "palette": {
            "popup": {
                "background": cookie.background,
                "text": "#FFFFFF"
            },
            "button": {
                "background": "#47546c",
                "text": "#FFFFFF"
            }
        },
        "position": "bottom-left",
        "type": "opt-in",
        "content": {
            "message": cookie.message,
            "dismiss": cookie.dismiss,
            "deny": cookie.deny,
            "allow": cookie.allow,
            "link": cookie.link,
            "href": cookie.href
        },
        elements: {
            messagelink: '<span id="cookieconsent:desc" class="cc-message">{{message}} <a aria-label="{{link}}" tabindex="0" class="cc-link" href="{{href}}">{{link}}</a></span>',
    },
    onInitialise: function (status) {
        var type = this.options.type;
        var didConsent = this.hasConsented();
        
        if (type == 'opt-in' && didConsent && status !== 'dismiss') {

        }
        if (type == 'opt-out' && !didConsent) {

        }
    },
    onStatusChange: function(status, chosenBefore) {
        var type = this.options.type;
        var didConsent = this.hasConsented();

        if (type == 'opt-in' && didConsent && status !== 'dismiss') {

        }
        if (type == 'opt-out' && !didConsent) {
            // disable cookies
        }
    }
})});
{/literal}</script>
{/block}
