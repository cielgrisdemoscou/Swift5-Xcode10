import Foundation

// Dictionary #2
// Adding Keys and Values

var words = [String: String]()
words["A"] = "Apple"
words["B"] = "Banana"

words.count // 2
print(words) // ["A": "Apple", "B": "Banana"]

words["B"] = "Ball"
print(words) // ["A": "Apple", "B": "Ball"]

words.updateValue("City", forKey: "C") // nil
print(words) // ["C": "City", "A": "Apple", "B": "Ball"]
words.updateValue("Circle", forKey: "C") // "City"


//Removing Keys and Values

words["B"] = nil // nil
print(words) // ["A": "Apple", "C": "Circle"]

words.removeValue(forKey: "A") // "Apple"
print(words) // ["C": "Circle"]

words.removeValue(forKey: "A") // "nil"
words.removeAll()




