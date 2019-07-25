import Foundation

// Dictionary #1
// Dictionary literal
// [key: value, key: value, ..]

var dict = ["A": "Apple", "B": "Banana"]

//empty dictonary
dict = [:]


// Dictionary Type
// Dictionary<K,V> -> [K:V]

let dict1: Dictionary<String, Int>
let dict2: [String:Int]


// Creating a Dictionary

let words = ["A": "Apple", "B": "Banana", "C": "City"]
let emptyDict: [String: String] = [:]
let emptyDict2 = [String: String]()
let emptyDict3 = Dictionary<String, String>()


// Insepecting a Dictionary

words.count 
words.isEmpty


// Accessing Keys and Values

words["A"] // "Apple"

let a = words["E"] // nil
let b = words["E", default: "Empty"] // "Empty"

for k in words.keys {
    print(k)
} // B C A

for k in words.keys.sorted() {
    print(k)
} // A B C 

for v in words.values {
    print(v)
}

let keys = Array(words.keys) 
let values = Array(words.values) 

