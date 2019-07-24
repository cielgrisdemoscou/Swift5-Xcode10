import Foundation

// Collection Types


// Foundation Collection -> Ns... / Object
// Swift Collection -> Array, Dictionary, Set . object, Value

//copy-on-write

// Array #1
// Array Literal

// [elem, elem, ...]

let nums = [1, 2, 3]

// Array Type
// Array<T> -> [T]

let strArray: Array<String>
let strArray2: [String]

// Array Basics
// Creating an Array


// let emptyArray = [] X 
let emptyArray: [Int] = []
let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()

let zeroArray = [Int](repeating: 0, count: 10)
// [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

// Accessing Elements
 
let fruits = ["Apple", "Banana", "Melon"]

fruits[0]
// "Apple"
fruits[0...2]

fruits[fruits.startIndex]
fruits[fruits.index(before: fruits.endIndex)]

fruits.first // "Apple"
fruits.last // "Melon"

emptyArray.first // nil
// emptyArray[0] -> Error 

// Array #2
// Adding Elements

var alphabet = ["A", "B", "C"]

alphabet.append("E") // only "String" type since type of alphabet is "String"

alphabet.append(contentsOf: ["F", "G"])
//  ["A", "B", "C", "E", "F", "G"]
alphabet.insert("D", at: 3)
//  ["A", "B", "C", "D", "E", "F", "G"]

alphabet.insert(contentsOf: ["a", "b", "c"] ,at: 0)

alphabet[0...2] = ["x", "y", "z"]
// ["a", "b", "c"] ->  ["x", "y", "z"]

alphabet.replaceSubrange(0...2, with: ["a", "b", "c"])
//["x", "y", "z"] ->  ["a", "b", "c"]

alphabet[0...2] = ["z"]
// ["a", "b", "c"] -> ["z"]

alphabet[0..<1] = []
// delete


// Removing Elements

alphabet = ["A", "B", "C", "D", "E", "F", "G"]

alphabet.remove(at: 2)
// "C"

alphabet.removeFirst()
// "A"

alphabet.removeFirst(2)
// Deleted "B", "D"

alphabet.removeAll()
// []

alphabet.popLast()
// nil

alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.popLast()
// "G"

alphabet.removeSubrange(0...2)
alphabet[0...2] = []


// Array #3
// Comparing Arrays

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]

a.elementsEqual(b)
// false

a.elementsEqual(b) { (lhs, rhs) -> Bool in
    return lhs.caseInsensitiveCompare(rhs)
        == .orderedSame
}
// true


// Finding Elements

let nums2 = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]

nums2.contains(1)
// true

nums2.contains { (n) -> Bool in
    return n % 2 == 0
}
// true

nums.first { (n) -> Bool in 
    return n % 2 == 0
}
// [1, 2, 3 ...] ->  2

nums.firstIndex { (n) -> Bool in
    return n % 2 == 0
}
// 1

nums.firstIndex(of: 1) 
// 0

nums.lastIndex(of: 1)
// 3


// Sorting on Array

nums2.sorted()
nums2 //[1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]

nums.sorted { (a, b) -> Bool in 
    return a > b
}
// ==
nums.sorted().reversed() // not return 
[Int](nums2.sorted().reversed())
// [7, 6, 5, 5, 4, 3, 2, 2, 1, 1, 0]

var mutableNums = nums2

mutableNums.sort()
mutableNums.reverse()

mutableNums.swapAt(0, 1) 
// chaing value of Index 0, 1

mutableNums.shuffle()


