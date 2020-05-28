/**
 * 
 * @function    processForm
 * @description Initializes the HTML form processing
 * @returns     {Function} validateBeforeSubmit()
 *              @description Will process form fields validation
 * @returns     {Function} submitWithAjax()
 *              @description Will handle form submitting with fetch() method
 */
export default function plugin(API) {

    const showAllErrorMessages = (errorList, form) => {

        while (errorList.firstChild)
            errorList.removeChild(errorList.firstChild);

        errorList.classList.add('is-hidden');

        let requiredFields = form.querySelectorAll('[required]');
        let invalidFields = form.querySelectorAll('[required]:invalid');

        requiredFields.forEach((node, index) => {
            node.parentNode.classList.remove('has-error', 'is-error');
        });

        invalidFields.forEach((node, index) => {

            let validationItem = form.querySelector('label[for="' + node.name + '"');
            let validationMessage = node.validationMessage || 'Invalid value.';
            let validationLabel = validationItem.dataset.text ? validationItem.dataset.text : validationItem.innerHTML;
            let appendValidationMessage = '<li class="notification is-error is-small"><strong>' + validationLabel + ':</strong> ' + validationMessage + '</li>';

            errorList.classList.remove('is-hidden');
            errorList.insertAdjacentHTML('beforeend', appendValidationMessage);

            node.parentNode.classList.add('has-error', 'is-error');

        });
    };

    const showFormStatusMessage = (form, notifications, data) => {

        const appendStatusMessage = '<li class="notification is-' + data.status + ' is-small"> ' + data.message + '</li>';

        while (notifications.firstChild)
            notifications.removeChild(notifications.firstChild);

        notifications.classList.add('is-hidden');

        switch (data.status) {

        case 'success':

            notifications.classList.remove('is-hidden');
            notifications.insertAdjacentHTML('beforeend', appendStatusMessage);

            setTimeout(function () {
                [].forEach.call(document.querySelectorAll('.alerts .notification'), (el) => {
                    el.classList.add('fade-out');
                    el.parentNode.removeChild(el);
                });
            }, 5000);
            // Reset form values
            form.reset();

            break;

        case 'error':
            notifications.classList.remove('is-hidden');
            notifications.insertAdjacentHTML('beforeend', appendStatusMessage);
            break;
        }

    };

    API.processForm = (selector, notifications) => {

        return {

            validateBeforeSubmit: () => {

                let submitButton = selector.querySelector('input[type=submit]');
                let inputField = selector.querySelectorAll('input');

                selector.addEventListener('submit', (event) => {
                    inputField.forEach(input => {
                        if (input.checkValidity && !input.checkValidity()) {
                            selector.querySelector('[required]:invalid').focus();
                            event.preventDefault();
                        }
                    });
                });

                submitButton.addEventListener('click', () => {
                    showAllErrorMessages(notifications, selector);
                });

                inputField.forEach(input => {
                    input.addEventListener('keypress', () => {
                        let type = input.getAttribute('type');
                        if (/date|email|month|number|search|tel|text|time|url|week/.test(type) && event.keyCode == 13) {
                            showAllErrorMessages(notifications, selector);
                        }
                    });
                });
            },

            submitWithAjax: () => {

                selector.addEventListener('submit', (event) => {

                    try {
                        const FD = new FormData(selector);
                        const url = selector.getAttribute('action');
                        let headers = new Headers();

                        headers.set('X-Requested-With','XMLHttpRequest');

                        fetch(url, {
                            method: 'POST',
                            body: FD,
                            headers: headers
                        }).then((response) => {
                            return response.json();
                        }).then(function(jsonData) {
                            showFormStatusMessage(selector,notifications,jsonData);
                        });

                        event.preventDefault();

                    } catch (error) {
                        return error;
                    }
                });

            }
        };
    };
}
