import Foundation

//Tuples 
//Tuple Expression

//(expr1, expr2, ...)

let data = ("<html>", 200, "OK", 12.34)

//Explicit Member Expression

//tuple.n 

data.0
data.1
data.2
data.3

var mutableTuple = data

// let -> Immutalbe Tuple
// var -> Mutalbe Tuple

//mutableTuple.1 = 404
//mutableTuple.1

//Named Tuples

//(name1: expr1, name2: expr2, ...)
//tutple.memberName

let named = (body: "<html>", statusCode: 200, statusMessage: "OK")

named.1
named.statusCode

//Tuple Decomposition

//let (name1, name2, ...) = tupleExpr
//var (name1, name2, ...) = tupleExpr

let data2 = ("<html>", 200, "OK", 12.34)

//let body = data.0
//let code = data.1
//let message = data.2
//let size = data.3 
//->

//let (body, code, message, size) = data
let (body, code, _, size) = data 

//Tuple Matching

let resolution = (3840.0, 2160.0)

if resolution.0 == 3840 && resolution.1 == 2160 {
    print("4K")
}

switch resolution {
case let(w, h) where w / h == 16.0 / 9.0:
    print("16:9")
case (_, 1080):
    print("1080p")
case (3840...4096, 2160):
    print("4K")
    
default:
    break
}





