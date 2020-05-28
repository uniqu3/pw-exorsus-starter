import { is } from 'utils';
/**
 *
 *
 * @function    doubleTapMenu
 * @description This will handle a Navigation menu with a set ID #main-menu.
 *              If a LI element has a class of parent and device is a touch device
 *              a link will require double tap.
 * @requires is.js
 */
export default function plugin(API) {

    API.doubleTapMenu = (() => {

        const dropdownMenuItems = document.querySelectorAll('ul#main-menu li.parent');

        // handle touchable dropdown/flyout menu
        dropdownMenuItems.forEach(hasChildrenItem => {

            let event = 'click';

            const closeOpenDropdowns = function() {

                let currentOpenItems = document.querySelectorAll('.selected');
                currentOpenItems.forEach(item => {
                    item.classList.remove('selected');
                });

                document.removeEventListener(event, closeOpenDropdowns);
            };

            hasChildrenItem.addEventListener(event, function(e) {

                if (!hasChildrenItem.classList.contains('selected') && is.touchDevice()) {
                    const parentMenuItem = hasChildrenItem.parentNode.closest('.selected');
                    // prevent opening link on first touch
                    if (e.target === this || e.target.parentNode === this || e.target.firstChild === this)
                        e.preventDefault();

                    closeOpenDropdowns();

                    hasChildrenItem.classList.add('selected');
                    if (parentMenuItem) parentMenuItem.classList.add('selected');

                    document.addEventListener(event, closeOpenDropdowns);
                }

                e.stopPropagation();
            });
        });
    })();
}
