//
// Write a function called that takes a string of parentheses,
//     and determines if the order of the parentheses is valid.
//     The function should return true if the string is valid, and false if it's invalid.
//
// Examples
// "()"              =>  true
// ")(()))"          =>  false
// "("               =>  false
// "(())((()())())"  =>  true
// //


function validParentheses(parens) {

    let balance = 0;
    const only = parens.split("");

    for (let i = 0; i < only.length; i++) {
        const char = only[i];
        if (char === '(') { balance += 1; }
        if (char === ')') { balance -= 1; }

        if (balance < 0) { return false; }
    }

    return balance === 0;
};


/////////// Refactored (cleaning up)/////
function validParentheses(parens) {

    let balance = 0;
    const only = parens.split("");

    for (let i = 0; i < only.length; i++) {
        const char = only[i];
        if (char === '(') balance += 1;
        if (char === ')') balance -= 1;

        if (balance < 0) return false;
    }

    return balance === 0;
};