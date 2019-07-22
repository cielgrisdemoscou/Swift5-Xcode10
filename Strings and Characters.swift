import Foundation

// Strings and Characters

let s = "String"
let c: Character = "C"
let emptyChar: Character = " "
let emptyString = "" 
let emptyString2 = String()
emptyString.count

//String -> Swift String

var nsstr: NSString = "str"
let swiftStr: String = nsstr as String 

nsstr = swiftStr as NSString 


// Mutability

let immutableStr = "str"

var mutableStr = "str"
mutableStr = "new str"

// Unicode 

let str = "Swift String"

str.utf8
str.utf16

let thumbUp = "\u{1F44D}"
print(thumbUp)

//Multiline String Literals 

let multiline = """
        Lorem ipsum dolor sit amet, \
    consectetur adipiscing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
"""

print(multiline)

//String Interpolation 

// \(expr)

var str2 = "12.34KB"

let size = 12.34
str2 = String(size)  + "KB"
//  == 
str2 = "\(size)KB"

//Format Specifier
//%char

str2 = String(format: "%.1fKB", size)

String(format: "Hello, %@", "Swift")

String(format: "%d", 12)

String(format: "%.3f", 12.34)

String(format: "%10.3f", 12.34)

String(format: "%010.3f", 12.34)

String(format: "[%d]", 123)
String(format: "[%10d]", 123)
String(format: "[%-10d]", 123)

let firstName = "yoon-ah"
let lastName = "Lim"

// let korForamt = "그녀의 이름은 %@ %@ 입니다"
let korForamt = "그녀의 이름은 %2$@ %1$@ 입니다"
// Koren name = lastname + firstname
let engForamt = "Her name is &@ &@."

String(format: korFormat, firstName, lastName)
String(format: engFormat, firstName, lastName

// \t
// \n
// \ -> "\\"
print("\'Hello\' He said.")