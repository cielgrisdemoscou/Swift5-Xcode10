import Foundation

let c = { print("Hello, Swift") }
c()

let c2 = { (str: String) -> String in 
    return "Hello, \(str)"
}

let result = c2("Closure")
print(result)

typealias SimpleStringClosure = (String) -> String 

func perform(closure: SimpleStringClosure)  {
    print(closure("IOS"))
}

perform(closure: c2)

// inline Clousure
perform(closure: { (str: String) -> String in
    return "Hi, \(str)"    
})

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
// reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )

reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )

reversedNames = names.sorted(by: { $0 > $1 } )

reversedNames = names.sorted(by: >)

// Trailling Closures 
reversedNames = names.sorted() { $0 > $1 }

reversedNames = names.sorted { $0 > $1 }
