import Foundation

// Method and Subscript
// Type Method

// static(or class) func name(parameters) -> ReturnType {
    // statements
//}

// Type.method(parameters)


class Circle {
    static let pi = 3.14
    var radius = 0.0

    func getArea() -> Double {
        return radius * radius  * Circle.pi
    }

    class func PrintPi() {
        print(pi)
    }
}

class StrokeCircle: Circle {
    override static func printPi() {
        print(pi)
    }
}



