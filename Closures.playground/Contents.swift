import Foundation

//func add(_ lhs: Int, _ rhs: Int) -> Int {
//    lhs + rhs
//}

//let add: String = "foo"

let add: (Int, Int) -> Int
    = { (lhs: Int, rhs: Int) -> Int in
        lhs + rhs
        
    }
add(20, 30)


//customAdd(10, 20, using: )

//there function is label
func customAdd(_ lhs: Int, _ rhs: Int, using function: (Int, Int) -> Int) -> Int {
    function(lhs, rhs)
}

//customAdd(20, 30, using: { (lhs: Int, rhs: Int) -> Int in
//        lhs + rhs
//    }
//)

customAdd(
    20,
    30
) { (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

customAdd(
    20,
    30
) { (lhs, rhs) in
    lhs + rhs
}

//$ is argument
customAdd(20, 30) { $0 + $1 }


let ages = [30, 20, 19, 40]
//ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in
//    lhs < rhs
//})
//
//func < (lhs: Int, rhs: Int) -> Bool {
//
//}
ages.sorted(by: <)
ages.sorted(by: >)

func customAdd2(using function: (Int, Int) -> Int, _ lhs: Int, _ rhs: Int) -> Int {
    function(lhs, rhs)
}

//customAdd2(using: { (lhs, rhs) in lhs + rhs}, 20, 30)
customAdd2(using: { $0 + $1 + 10}, 20, 30)

func add10To(_ value: Int) -> Int {
    value + 10
}


func add20To(_ value: Int) -> Int {
    value + 20
}

func doAddition(on value: Int, using function: (Int) -> Int) -> Int {
//    return function(value)
    function(value)
}
doAddition(on: 20, using: add10To(_:))
doAddition(on: 20, using: add20To(_:))
