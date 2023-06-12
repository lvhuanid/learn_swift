import Foundation

class Person {
    var name: String
    var age: Int
    
    init(
        name: String,
        age: Int
    ) {
        self.name = name
        self.age = age
    }
    
    func increaseAge() {
        self.age += 1
    }
}

let foo = Person(name: "foo", age: 20)
foo.age
foo.increaseAge()
foo.age

foo.age
let bar = foo
bar.increaseAge()
foo.age
bar.age

if foo === bar {
    "foo same"
} else {
    "not"
}

class Vehicle {
    func goVroom() {
        "Vroom vroom"
    }
}

class Car: Vehicle {
    
}

let car = Car()
car.goVroom()

class Person2 {
//    var age: Int
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge() {
        self.age += 1
    }
}
let baz = Person2(age: 20)
baz.age
//baz.age += 1
baz.increaseAge()
baz.age


class Tesla {
    let manufacturer = "tesla"
    let model: String
    let year: Int
    
    init() {
        self.model = "x"
        self.year = 2023
    }
    
    init(
        model: String,
        year: Int
    ) {
        self.model = model
        self.year = year
    }
    
    convenience init(model: String) {
        self.init(model: model, year: 2023)
    }
}

class teslaModelY: Tesla {
    override init() {
        super.init(
            model: "y",
            year: 2023
        )
//        can't convenience
//        super.init(model: "y")
    }
}

let modelY = teslaModelY()
modelY.model
modelY.year
modelY.manufacturer

let fooBar = Person2(age: 20)
fooBar.age
func doSomething(with person: Person2) {
    person.increaseAge()
}
doSomething(with: fooBar)
fooBar.age

class MyClass {
    init() {
        "initialized"
    }
    func doSomething() {
        "do something"
    }
    deinit {
        "deinitialized"
    }
}

