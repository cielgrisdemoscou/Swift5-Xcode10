import Foundation

// String Indices 

let str = "Swift"

let firstCh = str[str.startIndex]
print(firstCh)

// let lastCh = str[str.endIndex] X
let lastCharIndex = str.index(before: str.endIndex)
let lastCh = str[lastCharIndex]
print(lastCh)

let secondCharIndex = str.index[after: str.startIndex]
let secondCh = str[secondCharIndex]
print(secondCh)

var thirdCharIndex = str.index(str.startIndex, offsetBy: 2)
var thirdCh = str[thirdCharIndex]
print(thirdCh)

thirdCharIndex = str.index(str.endIndex, offsetBy: -3)
thirdCh = str[thirdCharIndex]
print(thirdCh)

