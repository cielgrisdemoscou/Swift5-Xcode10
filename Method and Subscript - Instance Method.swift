import Foundation

// Method and Subscript
// Instance Method

// func name(parameters) -> ReturnType {
    //Code
// }

// instance.method(parameters)

class Sample {
    var data = 0
    static var sharedData = 123

    func doSomething() {
        print(data)
        print(Sample.sharedData)
    }

    func call() {
        doSomething()
    }
}

let a = Sample()
print(a.data) // 0

class Size {
//struct Size {
    var width = 0.0
    var height = 0.0

    func enlarge() {
    // mutating func enlarge() {
        width += 1.0
        height += 1.0
    }
}

let s = Size()
// var s = Size()
print(s.enlarge())

