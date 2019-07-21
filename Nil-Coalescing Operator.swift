import Foundation

var msg = ""
var input: String? = "Swift"

if let inputName = input {
    msg = "hello, " + inputName
}   else {
    msg = "Hello, Stranger"

}

print(msg)


var str = "hello, " + (input != nil ? input! : "Stranger")
print(str)

str = "hello, " + (input ?? "Stranger")
print(str)

