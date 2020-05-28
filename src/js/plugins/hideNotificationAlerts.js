/**
 * 
 * @function    hideNotificationAlerts
 * @description This function checks for LI items within a .alerts UL List.
 *              If there are any these will be hidden and removed from DOM
 */
export default function plugin(API) {


    API.hideNotificationAlerts = (() => {

        function alertHide(element) {

            if (element) {
                element.classList.add('fade-out');
                element.parentNode.removeChild(element);
            } else {

                [].forEach.call(document.querySelectorAll('.notification-container .alert'), (el) => {
                    el.classList.add('fade-out');
                    el.parentNode.removeChild(el);
                });
            }
        }

        let alertItems = document.querySelectorAll('.notifications .alerts > li');

        if (alertItems.length > 0) {

            alertItems.forEach((alertItem, index, alertItems) => {

                let closeAlert = alertItem.querySelector('.btn-clear');
                let delay = index > 0 ? 5000 + (500 * index) : 5000;

                let hideIntervalID = setInterval(function() {
                    alertHide(alertItem);
                    if (alertItems.length > index)
                        clearInterval(hideIntervalID);
                }, delay);

                closeAlert.addEventListener('click', () => {
                    alertHide(alertItem);
                });
            });
        }
    })();
}
