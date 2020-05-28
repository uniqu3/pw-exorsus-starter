// TODO: Make redux dispatches on run and register
// TODO: Make object exposed to API

/**
 * Factory
 * @param  {Object} API [description]
 * @return {Object} Queue [description]
 */
export default function createQueue(API) {

    class Queue {

        constructor(options = {}) {

            this._items = [];

            this.executed = false;
            this.errors = [];

            this.Promise = options.Promise || global.Promise;
        }

        /**
         * Register item to que
         * @param  {Function|Promise} item [description]
         * @return {void}      [description]
         */
        register(item) {

            const fn = typeof item === 'function' ? item : () => item; 

            this._items.push(fn);
        }

        /**
         * Run que. executes each registered callback.
         * @return {Promise} [description]
         */
        run() {

            const resolved = this._items.map(callback => {
        
                const retval = callback(this);

                if(retval instanceof Promise)
                    return retval.catch(error => {
                        this.errors.push(error);
                    });

                return retval;
            });

            const promise = this.Promise.all(resolved);

            promise
                .then(values => {

                    this.executed = true;
                });

            return promise;
        }
    }

    return new Queue();
}
