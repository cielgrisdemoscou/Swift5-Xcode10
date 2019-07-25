import Foundation

// Enumerations 
// element -> case

// enum TypeName {
    //case caseName
    //case caseName, caseName
    //}


enum Alignment {
    case left
    case right 
    case center
}

Alignment.center // center

var textAlignment = Alignment.center

textAlignment = .left
// textAlignement = .Left // Error 

switch textAlignment {
case .left:
    print("left")
case .right:
    print("right")
case .center:
    print("center")
}

