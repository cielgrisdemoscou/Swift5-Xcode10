import Foundation

// Structures and Classes 

// Structure
// struct StructName {
    //property
    //method
    //initializer
    //subscript
    //}

struct Person {
    var name: String
    var age: Int

    func speak() {
        print("Hello")
    }
}

let p = Person(name: "Steve", age: 50)
p.name // "Steve"
p.age // 50
p.speak()


// Class
// class ClassName {
    //property
    //method
    //initializer
    //subscript
    //}

class Person2 {
    var name = "Jone Doe"
    var age = 0

    func speak() {
        print("Hello")
    }
}

let p2 = Person2()


