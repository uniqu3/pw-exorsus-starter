import {
    BOOT,
    BOOT_DONE,
    BOOT_FAIL,
    INIT,
    INIT_DONE,
    INIT_FAIL,	
    READY,
    READY_DONE,
    READY_FAIL,
    START_LOADING,
    STOP_LOADING,
    AUTHENTICATE,
    NOTIFY,
} from 'actions/types';

//=============================================================		
// Boot
//=============================================================		

export function boot() {
    return {
        type: BOOT,
    };
}

export function bootDone() {
    return {
        type: BOOT_DONE
    }
}

export function bootFail() {
    return {
        type: BOOT_FAIL
    };
}

//=============================================================		
// Init
//=============================================================	

export function init() {
    return {
        type: INIT
    };
}

export function initDone() {
    return {
        type: INIT_DONE
    };
}

export function initFail() {
    return {
        type: INIT_FAIL
    };
}

//=============================================================		
// Ready
//=============================================================	

export function ready() {
    return {
        type: READY
    };
}

export function readyDone() {

    return {
        type: READY_DONE
    };
}

export function readyFail() {
    return {
        type: READY_FAIL
    };
}

//=============================================================		
// Loading
//=============================================================	

export function startLoading() {
    return {
        type: START_LOADING
    };
}

export function stopLoading() {
    return {
        type: STOP_LOADING
    };
}

//=============================================================		
// Authentication
//=============================================================		

export function authenticate(status) {
    return {
        type: AUTHENTICATE,
        status
    };
}

//=============================================================		
// Notifications
//=============================================================	

export function notify(message, options) {
    return {
        type: NOTIFY,
        message,
        options
    };
}
