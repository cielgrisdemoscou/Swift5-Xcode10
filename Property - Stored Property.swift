import Foundation

// Stored Properties
// var name: Type = DefaultValue -> Variable Stored Property
// let ... -> Constant Stored Property

class Person {
    let name: String = "John Doe"
    var age: Int =  33
}

// Explicit Member Expression 
// -> Dot syntax 
// instanceName.propertyName
// instanceName.propertyname = NewValue

let p = Person()
p.age = 30 

// Lazy Stored Properties 
// lazy var name: Type = DefaultValue

struct Image {
    init() {
        print("new image")
    }
}

struct BlogPost {
    let title: String = "Title"
    let content: String = "Content"
    lazy var attachment: Image = Image()

    let date: Date = Date()

    lazy var formattedDate: String = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
    }()

}

var  post = BlogPost()
print(post.attachment) // new image











