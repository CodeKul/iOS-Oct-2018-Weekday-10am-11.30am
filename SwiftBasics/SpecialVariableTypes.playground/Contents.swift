//: Playground - noun: a place where people can play

import UIKit

var myVar : Any

myVar = 10
print(myVar)

myVar = "Codekul"
print(myVar)

myVar = 10.67
print(myVar)

myVar = 20
var myInt = 10
//var res = myInt + (myVar as! Int)

myVar = "String"
myVar = 10
var str = myVar as? String

//tuple
var t = (1,2,3,4,5,6,"Codekul",10.80, true)
t.6

var myOptionalVar : String? = ""
print(myOptionalVar!)


var myIntOpt: Int? = 10
var myDoubleOpt: Double?
var myBoolOpt: Bool?

myInt = 20
myIntOpt = 30

var res = myIntOpt ?? 50
print(res)




