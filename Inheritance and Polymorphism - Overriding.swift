import Foundation

// Inheritance and Polymorphism
// Overriding


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
    var diameter: Double {
        return radius * 2
    }

    override func draw() {
        super.draw()
        print("override")
    }
}

let c = Circle(name: "Circle")
print(c.draw()) // draw Circle  override


class Oval: Circle {
    override var diameter: Double {
        get {
            return super.diameter
        }
        set {
            super.radius = newValue / 2
        }
    }

    override var radius: Double {
        /*
        get {
            return super.radius
        }
        set {
            super.radius = newValue
        }
        */

        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }

    }
}


