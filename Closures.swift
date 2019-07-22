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

