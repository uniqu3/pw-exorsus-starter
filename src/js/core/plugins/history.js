import { createBrowserHistory } from 'history';

export default function(API) {
    
    const history = createBrowserHistory();

    //=============================================================		
    // API binds
    //=============================================================	

    API.registerInstance('history', history);

    API.redirect = (location) => {

        history.push(location);
    };
}
