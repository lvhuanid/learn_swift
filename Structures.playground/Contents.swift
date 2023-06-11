import Foundation

struct Person {
    let name: String
    let age: Int
}

let foo = Person(
    name: "foo",
    age: 20
)

foo.name
foo.age

//struct CommodoreComputer {
//    let name: String
//    let manufacturer: String = "commodore"
//}
struct CommodoreComputer {
    let name: String
    let manufacturer: String
    init(name:String) {
        self.name = name
        self.manufacturer = "commodore"
    }
}


//let c64 = CommodoreComputer(name: "my commodore", manufacturer: "commodore")
//let c128 = CommodoreComputer(name: "my commodore 128", manufacturer: "commodore")

let c64 = CommodoreComputer(name: "c64")
c64.name
c64.manufacturer

struct Person2 {
    
}
