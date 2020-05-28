import * as utils from 'utils';
import { Exception } from 'exceptions';

import historyAPI from './plugins/history';
import tasksAPI from './plugins/tasks';

//=============================================================		
// Initialize jQuery
//=============================================================		

if(typeof jQuery !== 'undefined' && global === window)
    window.jQuery = window.$ = jQuery;

//=============================================================		
// Utils
//=============================================================		

export function boot(API, callback) {

    global.API = API || {}

    API.tasks.boot
        .run()
        .catch(() => {

            console.error("Application boot failed");
        })
        .finally(() => {

            if(typeof callback === 'function')
                callback();
        });

    if(__DEV__) 
        console.log('API Booted', API);
}

//=============================================================
// Factory
//=============================================================

export function create(config) {

    const _config = config || {};
    
    const _plugins = [];
    const _instances = [];

    class API {

        constructor() {

            this.version = __VERSION__;

            this.utils = utils;
        }

        /**
         * Config
         */

        config(key) {

            return typeof key !== 'undefined' ? _config[key] : _config;
        }

        /**
         * Registrar methods
         */

        use(plugin) {

            if (plugin.installed) {
                console.warn('Duplicate plugin initialization');
                return;
            }

            plugin.call(null, this);
            plugin.installed = true;

            _plugins.push(plugin);
            
            return this;
        }

        /**
         * Instance methods
         */
        
        registerInstance(name, object) {

            return _instances[name] = object;
        }

        getInstance(name = null) {

            if(name === null)
                return _instances;

            const instance = _instances[name];
            if(typeof instance === 'undefined')
                throw new Exception(`Invalid instance '${name}'`);

            return instance;
        }
    }

    const apiObject = new API();

    // Register plugins
    apiObject.use(historyAPI);
    apiObject.use(tasksAPI);

    return apiObject;
}
