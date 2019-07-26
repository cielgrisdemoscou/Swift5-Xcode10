import Foundation

// self & super 
// self 
// self.propertyName
// self.method()
// self[index]
// self.init(parameters) 

class Size {
    var width = 0.0
    var height = 0.0

    func calcArea() -> Double {
        return self.width * self.height 
        // == width * height
    }

    var area: Double {
        return self.calcArea()
        // == calcArea
    }

    func update(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func doSomething() {
        let c = {self.width * self.height}
    } 

    static let unit = ""

    static func doSomething() {
        //self.width X 
        self.unit
        // == unit

    }
}
