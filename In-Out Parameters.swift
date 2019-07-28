import Foundation

// In-Out Parameters
// (name: ionout Type)
// functionName(argLabel: &expr)

var num1 = 12
var num2 = 34

func swapNumber(_ a: inout Int, with b: inout Int) {
   let tmp = a
   a = b 
   b = tmp

}

swapNumber(&num1, with: &num2)

