import Foundation

//struct Animal {
//    let type: String
//    init(type: String) {
//        if type ==  "rabbit" || type == "dog" || type == "cat" {
//            self.type = type
//        } else {
//            preconditionFailure()
//        }
//    }
//}
//
//Animal(type: "bike")

enum Animals {
//    case cat, dog, rabbit
    case cat
    case dog
    case rabbit
    case hedgeHog
}

let cat = Animals.cat
cat

//func describeAnimal(_ animal: Animals) {
//    switch animal {
//    case .cat:
//        "this is a cat"
//        break
//    case .dog:
//        "this is a dog"
//        break
//    case .rabbit:
//        "this is a rabbit"
//        break
//    default:
//        "this is something else"
//    }
//}
//describeAnimal(Animals.cat)

switch cat {
case .cat:
    "this is a cat"
    break
case .dog:
    "this is a dog"
    break
case .rabbit:
    "this is a rabbit"
    break
default:
    "this is something else"
}

enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(pass: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(pass: URL(string: "https://apple.com")!)

//1
//switch wwwApple {
//case .fileOrFolder(path: let path, name: let name):
//    path
//    name
//    break
//case .wwwUrl(pass: let pass):
//    pass
//    break
//case .song(artist: let artist, songName: let songName):
//    artist
//    songName
//    break
//}

//2
//switch wwwApple {
//case .fileOrFolder(let path, let name):
//    path
//    name
//    break
//case .wwwUrl(let pass):
//    pass
//    break
//case .song(let artist, let songName):
//    artist
//    songName
//    break
//}

//3
switch wwwApple {
case let .fileOrFolder(path, name):
    path
    name
    break
case let .wwwUrl(pass):
    pass
    break
case let .song(artist, songName):
    artist
    songName
    break
}

//if case let .fileOrFolder(path, name) = wwwApple {
//    path
//}

if case let .wwwUrl(path) = wwwApple {
    path
}

let withoutYou = Shortcut.song(artist: "symphony x", songName: "without you")

if case let .song(_, songName) = withoutYou {songName}


enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
//    func getManufacturer() -> String {
    
//    var manufacturer: String {
//        switch self{
//        case let .car(manufacturer, _):
//            return manufacturer
//        case let .bike(manufacturer, _):
//            return manufacturer
//
//        }
//    }
    
//    var manufacturer: String {
//        switch self{
//        case let .car(manufacturer, _),
//            let .bike(manufacturer, _):
//            return manufacturer
//        }
//    }
    
    var manufacturer: String {
        switch self{
        case let .car(_, foo),
            let .bike(foo, _):
            return foo
        }
    }
}

//func getManufacturer(from vehicle: Vehicle) -> String {
//    switch vehicle{
//    case let .car(manufacturer, _):
//        return manufacturer
//    case let .bike(manufacturer, _):
//        return manufacturer
//
//    }
//}

let car = Vehicle.car(manufacturer: "tesla", model: "x")
car.manufacturer
//car.getManufacturer()
//getManufacturer(from: car)
//switch car{
//case let .car(manufacturer, _):
//    manufacturer
//    break
//case let .bike(manufacturer, _):
//    manufacturer
//    break
//}


let bike = Vehicle.bike(manufacturer: "hd", yearMade: 1987)
bike.manufacturer
//bike.getManufacturer()
//getManufacturer(from: bike)
//switch bike{
//case let .car(manufacturer, _):
//    manufacturer
//    break
//case let .bike(manufacturer, _):
//    manufacturer
//    break
//}


enum FamilyMember: String {
    case father = "dad"
    case mother = "mom"
    case brother = "bro"
    case sister = "sis"
}

FamilyMember.father.rawValue

enum FavoriteEmoji: String, CaseIterable {
    case blush = "😀"
    case rocket = "🚀"
    case fire = "👩‍🚒"
}

FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)

if let blush = FavoriteEmoji(rawValue: "😀") {
    "found the blush emoji"
    blush
} else {
    "this emoji doesn't exist"
}


enum Height {
    case short, medium, long
    mutating func makeLong() {
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()
myHeight


indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freehand(IntOperation)
    
    func calculateResult (of operation: IntOperation? = nil) -> Int {
        switch operation ?? self {
        case let .add(lhs, rhs):
            return lhs + rhs
        case let .subtract(lhs, rhs):
            return lhs - rhs
        case let .freehand(operation):
            return calculateResult(of: operation)
        }
    }
}


