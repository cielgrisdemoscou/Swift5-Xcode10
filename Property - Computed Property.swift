import Foundation

// Computed Property 
//var name: Type {
    //get {
        //statements
        //return expr
    //}
    //set(name) {
        //statements
    //}
//}

class Person {
    var name: String
    var yearOfBirth: Int

    init(name: String, year: Int) {
        self.name = name 
        self.yearOfBirth = year
    }

    var age: Int {
        get {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            return year - yearOfBirth
        }

        set {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            yearOfBirth = year - newValue
        }

    }
}


let p = Person(name: "Jone Doe", year: 2002)
print(p.age) // 17

p.age = 50
print(p.yearOfBirth) // 1969


// Read-only Computed Properties

// var name: Type {
    //get {
        //statements
        //return expr
    //}
//}

//var name: Type {
    //statements
    //return expr
//}
















