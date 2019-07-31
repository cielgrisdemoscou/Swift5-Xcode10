import Foundation

// Inheritance and Polymorphism
// Inheritance

    /* 
    class ClassName: SuperClassName {
        }
    */

class Figure {
    var name = "Unknown"

    init(name: String) {
        self.name = name 
    }

    func draw() {
        print("draw \(name)")
    }
}

class Circle: Figure {
    var radius = 0.0
}

let c = Circle(name: "Circle")
print(c.radius) // 0.0
print(c.name) // Circle

//final class 

    /* 
    final class ClassName: SuperClassName {
        }
    */

final class Rectangle: Figure {
    var width = 0.0
    var height = 0.0 
}

//class Square: Rectangle {
//} if we use final class, we can't use Inheritance.    

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

print("Vehicle: \(someVehicle.description)")
// Vehicle: traveling at 0.0 miles per hour
