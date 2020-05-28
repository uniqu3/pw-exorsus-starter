/**
 * Composes single-argument functions from right to left. The rightmost
 * function can take multiple arguments as it provides the signature for
 * the resulting composite function.
 * 
 * Usage : compose functions right to left
 * compose(minus8, add10, multiply10)(4) === 42
 *
 * The resulting function can accept as many arguments as the first function does
 * compose(add2, multiply)(4, 10) === 42
 *
 * Code adopted from: https://medium.com/@dtipson/creating-an-es6ish-compose-in-javascript-ac580b95104a
 *
 */

const compose = (...fns) => fns.reduce((f, g) => (...args) => f(g(...args)));

export default compose;
