/**
 * 
 * @function    imgLazyLoad()
 * @description Checks for loading HTML attribute and replaces image source attribute with data-src value.
 *              If support is not given by the Browser lazisizes.js Plugin should load.
 */

export default function plugin(API) {

    API.imgLazyLoad = (() => {

        if ('loading' in HTMLImageElement.prototype) {
            const images = document.querySelectorAll('img[loading="lazy"]');
            images.forEach(img => {
                img.src = img.dataset.src;
            });
        } else {
            // Dynamically import the LazySizes library
            let script = document.createElement('script');
            script.async = true;
            script.src =
                "https://cdnjs.cloudflare.com/ajax/libs/lazysizes/4.1.8/lazysizes.min.js";
            document.body.appendChild(script);
        }
    })();
}
