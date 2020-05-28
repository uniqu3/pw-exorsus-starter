import { animateScrollTo } from 'utils';

export default function plugin(API) {

    API.scrollToHash = (hash) => {
        let to = document.querySelector(hash);
        if (to)
            animateScrollTo(to, 900);
    };

    // Scroll on load
    API.tasks.ready.register(() => {

        if (location.hash.length > 0)
            API.scrollToHash(location.hash);
    });
}
