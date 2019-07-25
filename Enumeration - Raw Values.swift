import Foundation

// Enumerations 
// Raw Values 

// enum TypeName: RawValueType {
    // case caseName = Value 
// }

enum Alignment: Int {
    case left 
    case right
    case center 
}

Alignment.left.rawValue // 0
Alignment.right.rawValue // 1
Alignment.center.rawValue// 2

// Alignment.right.rawValue = 10 // Error 
Alignment(rawValue: 0) // left
Alignment(rawValue: 200) // nil


enum Weekday: String {
    case sunday
    case monday = "Mon"
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

Weekday.sunday.rawValue // "sunday"
Weekday.monday.rawValue // "Mon"

enum ControlChar: Character {
    case tab = "\t"
    case newLine = "\n"
}





