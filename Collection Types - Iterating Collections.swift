import Foundation

// Iterating Collections 
// for-in
// for element in collection {
    //statements
    //}

print("Array", "========")
let arr = [1, 2, 3]
for num in arr {
    print(num)
}

print("Set", "=========")
let set: Set = [1, 2, 3]
for num in set {
    print(num)
} // Set is not sorted type

print("Dictionary", "=========")
let dict = ["A": 1, "B": 2, "C": 3]
for (key, value) in dict {
    print(key, value)
}


// forEach

print("Array", "==========")
let arr2 = [1, 2, 3]
arr2.forEach { (num) in
    print(num)
}

print("Set", "=========")
let set2: Set = [1, 2, 3]
set2.forEach { (num) in
    print(num)
}

print("Dictionary", "=========")
let dict2 = ["A": 1, "B": 2, "C": 3]
dict2.forEach { (elem) in
    print(elem.key, elem.value)
}

func withForIn() {
    print(#function)
    let arr3 = [1, 2, 3]
    for num in arr3 {
        print(num)
        return
    }
} // 1

func withForeach() {
    print(#function)
    let arr4 = [1, 2, 3]
    arr.forEach { (num) in 
    // not possible to use "continue" and "break"
        print(num)
        return // return only current 'Closure"
    }
} // 1 2 3



















