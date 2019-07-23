import Foundation

// String Basics

var str = "Hello, Swift String"
var emptyStr = ""
emptyStr = String()

let a = String(true)
print(a)

let b = String(12)
print(b)

let c = String(12.34)
print(c)

let d = String(str)
print(d)

let hex = String(123, radix: 16)
let octal = String(123, radix: 8)
let binary = String(123, radix: 2)

let repeatStr = String(repeating: "a", count: 7)
print(repeatStr)

let e = "\(a) \(b)"
let f = a + " " + b
str += "!!"

str.count
str.isEmpty 

str == "Apple"
"apple" != "Apple"

print(str.lowercased())
print(str.uppercased())
print("apple ipad".capitalized)

for char in "Hello" {
    print(char)
}

let num = "1234567890"
num.randomElement()

print(num.shuffled())



















