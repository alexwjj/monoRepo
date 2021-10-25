function curryIt(fn) {
    let length = fn.length,
        args = [];

    const result = function (arg) {
        args.push(arg);
        length--;
        if (length <= 0) {
            return fn.apply(this, args);
        } else {
            return result;
        }
    }

    return result;
}


function add(a, b) {
    console.log(a, b)
    return a + b
}
