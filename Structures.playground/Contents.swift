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
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let fooBar = Person2(firstName: "foo", lastName: "bar")
fooBar.firstName
fooBar.lastName
fooBar.fullName


struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "driving..."
        currentSpeed = speed
    }
}

let immutavleCar = Car(currentSpeed: 10)
//immutavleCar.drive(speed: 29)

var mutableCar = Car(currentSpeed: 10)
//mutableCar.drive(speed: 30)
//mutableCar.currentSpeed
//var copy = mutableCar
let copy = mutableCar
mutableCar.currentSpeed
mutableCar.drive(speed: 30)
mutableCar.currentSpeed
copy.currentSpeed


struct LivingThing {
    init() {
        "i'm a living thing"
    }
}

//struct Animal: LivingThing {
//
//}

struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(manufacturer: self.manufacturer, currentSpeed: currentSpeed)
    }
}

let bike1 = Bike(manufacturer: "hd", currentSpeed: 20)
var bike2 = bike1.copy(currentSpeed: 30)
bike2.currentSpeed
