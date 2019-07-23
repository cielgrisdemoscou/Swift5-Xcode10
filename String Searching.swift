import Foundation

// String Comparison 

let largeA = "Apple"
let smallA = "apple"
let b = "Banana"

print(largeA.compare(smallA) == .orderedSame)
// not same 

print(largeA.caseInsensitiveCompare(smallA) == .orderedSame)
// same :apple == Apple
// ==
largeA.compare(smallA, options: [.caseInsensitive]) == .orderedSame


let str = "Hello, Swift Programming!"
let prefix = "Hello"
let suffix = "Programming"

print(str.hasPrefix(prefix))
// True -> Hello 

str.lowercased().hasPrefix(prefix.lowercased())

print(str.hasSuffix(suffix))
//false -> suffix == Programming! 




