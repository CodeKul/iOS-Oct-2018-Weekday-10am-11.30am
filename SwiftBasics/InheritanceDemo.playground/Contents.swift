//: Playground - noun: a place where people can play

import UIKit

class A {
    
    var a = 10
    
    init(a: Int) {
        self.a = a
    }
    
    func display() {
        print("a = \(self.a)")
    }
}


class B {
    var b = 20
    func display() {
        print("b = \(self.b)")
    }
}

class C: A {
    var c = 30
    
    init(a: Int, c: Int) {
        super.init(a: a)
        self.c = c
    }
    
    override func display() {
        super.display()
        print("c = \(self.c)")
    }
}

var aObj = A(a: 10)
aObj.display() // a = 10


var bObj = B()
bObj.display() // b = 20

var cObj = C(a: 11, c: 33)
cObj.display() // a = 10


