/*!
 * SITE main application
 * @copyright Copyright 2019
 *
 * Tapio Löytty, <tapsa@orange-media.fi>
 * Web: www.orange-media.fi
 * Goran Ilic, <ja@ich-mach-das.at>
 * Web: www.ich-mach-das.at
 */

// Core
import { create, boot } from 'core';
import * as utils from 'utils';
//

//import ajax from 'plugins/ajax';
import doubleTapMenu from 'plugins/doubleTapMenu';
import initializeLightGallery from 'plugins/initializeLightGallery';
import hideNotificationAlerts from 'plugins/hideNotificationAlerts';
import heroSlider from 'plugins/initializeSwiperSlider';
import processForm from 'plugins/formSubmitHandler';
import imgLazyLoad from 'plugins/imgLazyLoad';
//import loadGoogleMap from 'plugins/loadGoogleMap';
import loadOSMaps from 'plugins/loadOSMaps';
import scrollToTop from 'plugins/scrollToTop';
import scrollToHash from 'plugins/scrollToHash';
import toggleHamburgerMenu from 'plugins/toggleHamburgerMenu';

// Import Vendor
import AOS from 'aos';
import 'vendor/svgxuse';
import 'vendor/cookieconsent.min';

//=============================================================
// Config
//=============================================================

const config = {
    google: {
        maps: {
            api_key: '',
        },
    },
};

//=============================================================
// Options
//=============================================================

const defaultOptions = {
    rootUrl: './',
};

//=============================================================
// Bind API
//=============================================================

const API = create(config);

//API.use(ajax);
API.use(doubleTapMenu);
API.use(initializeLightGallery);
API.use(hideNotificationAlerts);
API.use(heroSlider);
API.use(imgLazyLoad);
//API.use(loadGoogleMap);
API.use(loadOSMaps);
API.use(processForm);
API.use(scrollToHash);
API.use(scrollToTop);
API.use(toggleHamburgerMenu);

API.page = document.querySelector('body').dataset;

API.init = options => {
    // Set runtime options
    API.options = Object.assign({}, defaultOptions, options);

    API.tasks.init.run();

    // Animations
    AOS.init({
        once: true,
    });

    // Init the slider function
    let hero = document.querySelector('.swiper-init');
    if (hero) {
        const slider = API.heroSlider('.swiper-init');

        slider.on('slideChangeTransitionStart', function() {
            let heroTitleAll = document.querySelectorAll(
                '.hero--content__title'
            );
            let heroBylineAll = document.querySelectorAll(
                '.hero--content__byline'
            );
            let heroBtnAll = document.querySelectorAll('.hero--content__btn');

            if (heroTitleAll)
                [].forEach.call(heroTitleAll, function(el) {
                    el.classList.remove('slide-in-left');
                });
            if (heroBylineAll)
                [].forEach.call(heroBylineAll, function(el) {
                    el.classList.remove('slide-in-bottom');
                });
            if (heroBtnAll)
                [].forEach.call(heroBtnAll, function(el) {
                    el.classList.remove('slide-in-bottom');
                });
        });
        slider.on('slideChangeTransitionEnd', function() {
            let heroTitle = document.querySelector(
                '.swiper-slide-active .hero--content__title'
            );
            let heroByline = document.querySelector(
                '.swiper-slide-active .hero--content__byline'
            );
            let heroBtn = document.querySelector(
                '.swiper-slide-active .hero--content__btn'
            );

            if (heroTitle) heroTitle.classList.add('slide-in-left');
            if (heroByline) heroByline.classList.add('slide-in-bottom');
            if (heroBtn) heroBtn.classList.add('slide-in-bottom');
        });
    }

    // Init gallery plugin
    API.initializeLightGallery('.items--images');
    // Init google map
    const maps = document.querySelectorAll('.map');
    if (maps.length > 0) {
        maps.forEach(item => {
            let map = API.loadOSMap();
            let mapData = JSON.parse(item.dataset.map);

            map.createMap(item);
            map.addMarkers(mapData);
        });
    }

    // Handle form validation and submit
    const forms = document.querySelectorAll('.form-validate');
    forms.forEach(form => {
        let errorList = form.querySelector('ul.alerts-validate');

        API.processForm(form, errorList).validateBeforeSubmit();

        if (form.classList.contains('form-ajax'))
            API.processForm(form, errorList).submitWithAjax();
    });

    // Scroll back to top page
    API.scrollToTop('#back-top');
    // Init mobile menu icon
    API.toggleHamburgerMenu('.navigation--trigger', '.nav-main');

    window.addEventListener('scroll', function() {
        //console.log('scrolling');
    });

    window.addEventListener('resize', function() {
        //console.log('resizing');
    });

    API.tasks.ready.run();

    window.addEventListener('unhandledrejection', function(event) {
        console.warn(
            'WARNING: Unhandled promise rejection. Reason: ' + event.reason,
            event
        );
    });
};

//=============================================================
// Boot API
//=============================================================

boot(API);
