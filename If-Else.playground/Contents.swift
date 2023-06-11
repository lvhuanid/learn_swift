import Foundation

let myName = "vandad"
let myAge = 20
let yourName = "foo"
let yourAge = 19

if myName == "vandad" {
    "your name is \(myName)"
} else {
    "Oops, i guessed it wrong"
}

if myName == "vandad" && myAge == 30 {
    "name is vandad and age is 30"
} else if myAge == 20 {
    "i only guessed the age right"
} else{
    "i don't know what i'm doing"
}

if myAge == 20 || myName == "foo" {
    "either age is 20, name is foo or both"
} else if myName == "vandad" || myAge == 20 {
    "it's too late to get in this clause"
}


 
