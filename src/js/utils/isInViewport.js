/**
 * Check if an element is in the visible viewport
 * @param {jQuery|HTMLElement} el
 * @returns boolean
 */
const isInViewport = (el) => {
    if (typeof jQuery === "function" && el instanceof jQuery) el = el[0];
    let rect = el.getBoundingClientRect();
    return (
        rect.top >= 0 &&
        rect.left >= 0 &&
        rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
        rect.right <= (window.innerWidth || document.documentElement.clientWidth)
    );
};

export default isInViewport;
