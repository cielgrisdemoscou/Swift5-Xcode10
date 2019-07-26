import Foundation

// Property Observer 
//var name: Type = DefaultValue {
    //willSet(name) {
        //statements
    //}
    //didSet(name) {
        //statements
    //}
//}

class Size {
    var width = 0.0 {
        willSet {
            print(width, "=>", newValue)
        }
        didSet {
            print(oldValue, "=>", width)
        }
    }
}

let s = Size()
s.width = 123

//0.0 => 123.0
//0.0 => 123.0

