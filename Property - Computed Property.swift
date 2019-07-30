import Foundation

// Computed Property 
//var name: Type {
    //get {
        //statements
        //return expr
    //}
    //set(name) {
        //statements
    //}
//}

class Person {
    var name: String
    var yearOfBirth: Int

    init(name: String, year: Int) {
        self.name = name 
        self.yearOfBirth = year
    }

    var age: Int {
        get {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            return year - yearOfBirth
        }

        set {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            yearOfBirth = year - newValue
        }

    }
}


let p = Person(name: "Jone Doe", year: 2002)
print(p.age) // 17

p.age = 50
print(p.yearOfBirth) // 1969


// Read-only Computed Properties

// var name: Type {
    //get {
        //statements
        //return expr
    //}
//}

//var name: Type {
    //statements
    //return expr
//}

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// "square.origin is now at (10.0, 10.0)"

