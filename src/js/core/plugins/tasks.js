import createQueue from '../lib/queue';

export default function(API) {
    
    //=============================================================
    // API binds
    //=============================================================

    API.tasks = API.tasks || {};

    API.tasks.boot = createQueue(API);
    API.tasks.init = createQueue(API);
    API.tasks.ready = createQueue(API);
}
