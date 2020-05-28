import Swiper from 'swiper/js/swiper';

export default function plugin(API) {

    API.heroSlider = (selector) => {

        const hero = new Swiper(selector, {
            init: false,
            loop: true,
            autoplay: {
                delay: 9000,
                disableOnInteraction: true
            },
            preloadImages: false,
            lazy: true,
            effect: 'fade',
            fadeEffect: {
                crossFade: true
            },
            runCallbacksOnInit: true,
            pagination: {
                el: '.swiper-pagination',
                dynamicBullets: true
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            }
        });

        hero.on('init', function () {
            this.autoplay.stop();

            if (this.slides.length > 3) {
                this.autoplay.start();
            }
        });

        hero.init();

        return hero;
    };
}
