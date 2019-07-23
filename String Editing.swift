import Foundation

// Appending Strings and Characters

var str = "Hello"
str.append(", " )

let s = str.appending("Swift")
s.appending("!!") 

"File size is ".appendingFormat("%.1f", 12.3456)

var str2 = "Hello Swift"
str2.insert(",", at: str.index(str.startIndex, offsetBy: 5))
// output -> 'Hello, Swift"

if let sIndex = str.firstIndex(of: "S") {
    str2.insert(contentsOf: "Awesome", at: sIndex)
}

// Replacing Substrings

var str3 = "Hello, objective-C"

if let range = str.range(of: "Objective-C") {
    str3.replaceSubrange(range, with: "Swift")
}

if let range = str.range(of: "Hello") {
    let s = str3.replacingCharacters(in: range, with: "Hi")
}

print(s)
print(str3)

var s2 = s.replacingOccurrences(of: "Swift", with: "Awesome Swift")
print(s2) 

// Removing Substrings

var str4 = "Hello, Awesome Swifit!!"
let lastCharIndex = str4.index(before: str.endIndex)
var removed = str4.remove(at: lastCharIndex)

//removed = str4.removeFirst()
//st4.removeFirst(2)
//str4.removeLast(2)

if let range = str4.range(of: "Awesome") {
    str4.removeSubrange(range)
    // delete range
}

str4.removeAll() // delete memory as well
str4.removeAll(keepingCapacity: true) 

str4 = "Hello, Awesome Swift!!!"

var substr = str4.dropLast()
// drop last element 

substr = str4.dropLast(4)
print(substr)

substr = str.drop(while: { (ch) -> Bool in
    return ch != ","
})

