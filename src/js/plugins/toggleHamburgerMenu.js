export default function plugin(API) {

    API.toggleHamburgerMenu = (trigger, navigation) => {

        let hamburger = {
            openElement: document.querySelector(trigger),
            navigationElement: document.querySelector(navigation),
            pageElement: document.querySelector('html')
        };

        const doToggle = (e) => {
            e.preventDefault();
            hamburger.openElement.classList.toggle('is-open');
            hamburger.navigationElement.classList.toggle('is-open');
            hamburger.pageElement.classList.toggle('is-open');
        };

        hamburger.openElement.addEventListener('click', (e) => {
            doToggle(e);
        });
    };
}
