//: Playground - noun: a place where people can play

import UIKit

//Array

var arr1 = [1,2,3,4,5,6,7,8,9,10, 11]
arr1.append(12)
print("Capacity1: \(arr1.capacity)")

print(arr1[0])

var arr2 = ["Red", "Green"]
print("Capacity2: \(arr2.capacity)")

arr2.append("Blue")
print("Capacity2: \(arr2.capacity)")

arr2.append("Orange")
print("Capacity2: \(arr2.capacity)")

arr2.append("White")
print("Capacity2: \(arr2.capacity)")

arr2.append("Black")
print("Capacity2: \(arr2.capacity)")

arr2.append("Purple")
print("Capacity2: \(arr2.capacity)")

arr2.append("Yellow")
print("Capacity2: \(arr2.capacity)")

arr2.append("Gray")
print("Capacity2: \(arr2.capacity)")

arr2.append("Magenta")
print("Capacity2: \(arr2.capacity)")

arr2.append("Cyan")
print("Capacity2: \(arr2.capacity)")

arr2.append("Pink")
print("Capacity2: \(arr2.capacity)")

arr2.append("Sky blue")
print("Capacity2: \(arr2.capacity)")

arr2.sort()
print(arr2)

arr2.count


arr2.removeAll()
print("Capacity2: \(arr2.capacity)")
arr2.count

arr2.append("Red")
print("Capacity2: \(arr2.capacity)")
arr2.count


var arr3 = ["Green", "BLue", "Yellow"]
arr3.append(contentsOf: arr2)
arr3

//arr3.append(contentsOf: arr1)

var arr4 : [Any] = [1,2,3,4,5, "Red", "Green", "Blue", "Code"]

print(arr4[5])
arr4.insert(6, at: 5)
arr4

var str = arr4.last as! String

str.append("kul")
str

var arr5 = arr4.reversed() as [Any]
arr4


//Dictionary

var dict1 = ["key1" : "Value1"]

dict1["key"]

var myInfo = ["name": "Sanket", "address": "Pune", "phone": "1234567890"]
print(myInfo)

var dict2 = [1: "One", 2: "Two", 3: "Three"]
dict2[3]

var dict3 = ["One": 1, "Two": 2, "Three": 3]
dict3["Three"]

dict3["Four"] = 4
dict3["Three"] = 5
dict3

var dict4: [Int: Any] = [1: true, 2: 255.0]

//Sets

var s1 = Set([1,2,3,4,5,6])
var s2 = Set([4,5,6,7,8,9])

s1.union(s2)
s1.intersection(s2)

s1.subtracting(s2)
s1
s2.subtracting(s1)






