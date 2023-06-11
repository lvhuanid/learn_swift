import Foundation

let myAge = 20
let yourAge = 19

if myAge > yourAge {
    "i'm olger than you"
} else if myAge < yourAge {
    "i'm younger than you"
} else {
    "oh hey, we are the same age"
}

let myMothersAge = myAge + 30
let doubleMyAge = myAge * 2
/// 1. unary prefix
let foo = !true
/// 2. unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
/// 3. binary infix
let result = 1 + 2
let names = "foo" + " " + "bar"


let age = 30
//let message: String
//if age >= 18 {
//    messge = " you are an adult"
//} else {
//    message = "you are not yet an adult"
//}
let message = age >= 18
    ? "you are an adult"
    : "you are not yet an adult"


