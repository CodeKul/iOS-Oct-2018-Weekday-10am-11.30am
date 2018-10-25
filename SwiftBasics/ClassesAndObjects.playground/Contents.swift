//: Playground - noun: a place where people can play

import UIKit

class Car {
    var color: String
    var model: String
    var price: Double
    var weight = 200
    
    init(color: String, model: String, price: Double) {
        self.color = color
        self.model = model
        self.price = price
    }
    
    func display() {
        print("\(self.color) colored \(self.model) is priced $\(self.price)")
    }
    
    func paintWith(color: String) {
        print("Painting \(self.color) colored \(self.model) with \(color) color")
        self.color = color
        self.price *= 1.1
    }
}

var audi = Car(color: "Red", model: "Audi-R8", price: 10000)
audi.display()

audi.paintWith(color: "Blue")
audi.display()

var bmw = Car(color: "Yellow", model: "BMW-X5", price: 12000)
bmw.display()

bmw.paintWith(color: "Black")
bmw.display()
