import Foundation

// Dictionary #3
// Comparing Dictionaries

let a = ["A": "Apple", "B": "Banana", "C": "City"]
let b = ["A": "Apple", "C": "City", "B": "Banana"]

a == b // true 
a.elementsEqual(b) { (lhs, rhs) -> Bool in
    print(lhs.key, rhs.key)
    return lhs.key.caseInsensitiveCompare(rhs.key)
        == .orderedSame &&
        lhs.value.caseInsensitiveCompare(rhs.value)
        == .orderedSame
} 
// dictionary is not sorted so this code is wrong

let aKeys = a.keys.sorted()
let bKeys = b.keys.sorted()

aKeys.elementsEqual(bKeys) { (lhs, rhs) -> Bool in
    guard lhs.caseInsensitiveCompare(rhs)
        == .orderedSame else {
        return false
    }

    guard let lv = a[lhs], let rv = b[rhs],
        lv.caseInsensitiveCompare(rv) == .orderedSame
        else {
        return false
    }
    return false
}



// Finding Elements

let words =  ["A": "Apple", "B": "Banana", "C": "City"]

let c:((String, String)) -> Bool = {
    $0.0 == "B" || $0.1.contains("i")
    // key          value
}
    words.contains(where: c) // true


let r = words.first(where: c) 
r?.key
r?.value

words.filter(c)

