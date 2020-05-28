
/** 
 * @function    initializeLightGallery
 * @requires    lightgallery.js, lg-zoom.js
 * @description Initializes the lightgallery plugin for a given selector with default options.
 * @returns     {Object}
 */

import 'lightgallery.js';
import 'lg-zoom.js';

export default function plugin(API) {

    API.initializeLightGallery = (selector) => {

        let gallery = document.querySelector(selector);

        const lightgallery = lightGallery(gallery, {
            mode: 'lg-fade',
            cssEasing: 'cubic-bezier(0.680, -0.550, 0.265, 1.550)',
            selector: '.js-image',
            download: false,
            getCaptionFromTitleOrAlt: true,
            zoom: true
        });

        return lightgallery;
    };
}
