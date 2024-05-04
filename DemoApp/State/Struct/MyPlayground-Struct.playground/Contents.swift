//! Key Concept
//* Init in struct
import Foundation

struct Quiz{
    let title: String
    let isCreated: Date
    let isPremium: Bool?

    init(title: String, isCreated: Date = .now, isPremium: Bool?){
        self.title = title
        self.isCreated = isCreated
        self.isPremium = isPremium
    }

    func display(){
        print("Title: \(title)")
        print("Is Created: \(isCreated)")
        print("Is Premium: \(isPremium!)")
    }
}

var q1 = Quiz(title: "X", isPremium: true)
q1.display()
