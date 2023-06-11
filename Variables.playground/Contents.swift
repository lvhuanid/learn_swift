import Foundation
 
let myName = "lalala"
var yourName = "gugugugug"

var names = [
    myName,
    yourName
]
names.append("helll")
names.append("ssss")


let foo = "foo"
var foo2 = foo
foo2 = "foo2"
foo
foo2

let moreNames = [
    "foo",
    "bar"
]
var copy = moreNames
copy.append("baz")
moreNames
copy

let oldArray = NSMutableArray(
    array: [
        "foo",
        "bar"
    ]
)
oldArray.add("bac")
var newArray = oldArray
newArray.add("qa")
oldArray
newArray

let someNames = NSMutableArray(
    array: [
        "foo",
        "bar"
    ]
)
func changeTheArray(_ array: NSArray) {
    let copy = array as! NSMutableArray
    copy.add("bazzzz")
}
changeTheArray(someNames)
someNames
