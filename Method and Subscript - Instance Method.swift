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


class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

let counter = Counter()
// 초기 count 값은 0입니다.
counter.increment()
// count 값이 1로 변경 됐습니다.
counter.increment(by: 5)
// count 값은 현재 6입니다.
counter.reset()
// count 값은 0이 됩니다.

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
}

enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TriStateSwitch.low
ovenLight.next()
// ovenLight 값은 .high
ovenLight.next()
// ovenLight 값은 .off
