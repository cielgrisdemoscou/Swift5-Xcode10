import Foundation

// Method and Subscript - Subscript
// Subscript

    /* 
    instance[index]
    instance[key]
    instance[range]
    */

    /*
    subscript(parameters) -> ReturnType {
        get {
            return expression
    }
        set(name) {
            statements
        }
    }
    */

class List {
    var data = [1, 2, 3]

    subscript(index: Int) -> Int {
        get {
            return data[index]
    }
        set {
            data[index] = newValue
        }
    }
}

var l = List()
print(l[0]) // using getter

struct Matrix {
    var data = [[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]]

    subscript(row: Int, col: Int) -> Int {
        return data[row][col]
    }
}

let m = Matrix()
print(m[0, 0])
