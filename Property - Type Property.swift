import Foundation

// Type Property

class Math {
    static let pi = 3.14
}

let m = Math()
//m.pi X
Math.pi // 3.14

enum Weekday: Int {
    case sunday = 1, monday, tuesday, wednesday,
        thursday, firday, saturday
    static var today: Weekday {
        let cal = Calendar.current
        let today = Date()
        let weekday = cal.component(.weekday, from: today)
        return Weekday(rawValue: weekday)!
    }
}
print(Weekday.today) // friday