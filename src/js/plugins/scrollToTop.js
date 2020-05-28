import { animateScrollTo } from 'utils';

export default function plugin(API) {

    API.scrollToTop = (selector) => {
        let trigger = document.querySelector(selector);
        let show = 350;

        const showTrigger = () => {
            let y = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
            show = 350;

            if (y > show) {
                trigger.classList.remove('fade-out');
                trigger.classList.add('fade-in');
            } else {
                trigger.classList.remove('fade-in');
                trigger.classList.add('fade-out');
            }
        };

        trigger.classList.add('fade-out');

        let scrollIntervalID = setInterval(showTrigger, 10);

        trigger.addEventListener('click', (e) => {
            e.preventDefault();
            animateScrollTo('#top', 500);
        });
    };
}
