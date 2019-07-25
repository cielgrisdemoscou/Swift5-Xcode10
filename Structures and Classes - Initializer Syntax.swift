import Foundation

// Structures and Classes 
// Initializer Syntax 

// init(parameters) {
    //statements
    //}

let str = "123"
let num = Int(str) // 123

class Position {
    var x: Double
    var y: Double

    init() {
        x = 0.0
        y = 0.0
    }
    init(value: Double) {
        x = value 
        y = value 
    }
}

let a = Position() // Position
let b = Position(value: 100)
b.x // 100
b.y // 100



