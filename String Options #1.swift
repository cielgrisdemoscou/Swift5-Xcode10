import Foundation

// String Options #1 
// Case Insensitive Option

"A".caseInsensitiveCompare("a") == .orderedSame
// true, simple comparing

"A".compare("a", options: [.caseInsensitive])
== .orderedSame
// true, adding options

// Literal Option

let a = "\u{D55C}" // "한"
let b = "\u{1112}\u{1161}\u{11AB}" // "한"

a == b 
// true
a.compare(b) == .orderedSame
// true

//문자코드를 직접 비교하고 싶을 경우, literal code
a.compare(b, options: [.literal]) == .orderedSame
// false

// Backwards Option
// leading, trailing 

let english = "Be happy"

if let  range = english.range(of: "p") {
   print(english.distance(from: english.startIndex,
    to: range.lowerBound))
}

// lowerBound 시작값

//Trailing -> Leading, .backwards

if let range = english.range(of: "p", options: [.backwards]) {
   print(english.distance(from: english.startIndex,
    to: range.lowerBound))
 }


// Anchored Option

let str = "Swift Programming"

if let result = str.range(of: "Swift") {
    print(str.distance(from: str.startIndex, to: 
    result.lowerBound))
}   else {
    print("not found")
}


if let result = str.range(of: "Swift", options: [.backwards]) {
    print(str.distance(from: str.startIndex, to: 
    result.lowerBound))
}   else {
    print("not found")
}

if let result = str.range(of: "Swift", options: [.anchored]) {
    print(str.distance(from: str.startIndex, to: 
    result.lowerBound))
}   else {
    print("not found")
}

// [.anchored, .backwards] searching only last one
if let result = str.range(of: "Swift", options: [.anchored, .backwards]) {
    print(str.distance(from: str.startIndex, to: 
    result.lowerBound))
}   else {
    print("not found")
}

str.lowercased().hasPrefix("swift")
// ->

// searching Prefix
if let _ = str.range(of: "swift", options: 
    [.anchored, .caseInsensitive]) {
    print("same prefix")
 }













