/**
 * 
 * @param {*} API 
 */

export default function plugin(API) {

    API.stickyElement = (selector) => {

        let stickyElement = document.querySelector(selector);
        let originalElementPosition = stickyElement.offsetTop;
        let setElementOffset = stickyElement.offsetHeight;

        const stickIt = () => {

            let scrollPosition = Math.round(window.scrollY);

            if (scrollPosition > originalElementPosition + setElementOffset - 20) {
                stickyElement.classList.add('sticky');
                document.querySelector('html').classList.add('sticky');
            } else {
                stickyElement.classList.remove('sticky');
                document.querySelector('html').classList.remove('sticky');
            }
        };

        let scrollIntervalID = setInterval(stickIt, 400);

    };
}
