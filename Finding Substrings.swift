import Foundation

// String Searching
// Finding Substrings

let str = "Hello, Swift"

str.contains("Swift")
// true

str.lowercased().contains("swift")
// true

print(str.range(of: "Swift"))

str.range(of: "swift", options:[.caseInsensitive])
//true

let str2 = "Hello, Programming" 
let str3 = str2.lowercased()

var common = str.commonPrefix(with: str2)
// "Hello, "

common = str.commonPrefix(with: str3)
// ""

str.commonPrefix(with: str3, options:[.caseInsensitive])
// "Hello, "

str3.commonPrefix(with: str, options:[.caseInsensitive])
// "hello, "





