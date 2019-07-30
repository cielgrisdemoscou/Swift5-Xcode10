import Foundation

// Property Observer 
//var name: Type = DefaultValue {
    //willSet(name) {
        //statements
    //}
    //didSet(name) {
        //statements
    //}
//}

class Size {
    var width = 0.0 {
        willSet {
            print(width, "=>", newValue)
        }
        didSet {
            print(oldValue, "=>", width)
        }
    }
}

let s = Size()
s.width = 123

//0.0 => 123.0
//0.0 => 123.0

/*
willSet : 값이 저장되기 바로 직전에 호출 됨
didSet : 새 값이 저장되고 난 직후에 호출 됨
willSet에서는 새 값의 파라미터명을 지정할 수 있는데, 지정하지 않으면 기본 값으로 newValue를 사용합니다.
didSet에서는 바뀌기 전의 값의 파라미터명을 지정할 수 있는데, 지정하지 않으면 기본 값으로 oldValue를 사용합니다.

*/

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps
