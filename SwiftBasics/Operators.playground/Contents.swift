//: Playground - noun: a place where people can play

import UIKit

var a = 10
var b = 20
var c = 0

// Arithmetic

/*
 +
 -
 *
 /
 %
 */

c = a + b
c = a - b
c = a * b
c = a / b
c = a % b

var d = 10.30
var e = 30.9

//var g: Double = a

//var f = d + a



// Assignment
/*
 
 =
 
 */

a = 30 // a + c // b

// Compound Assignment

/*
 
 +=
 -=
 *=
 /=
 %=
 
 */

a += b // a = a + b
a *= b // a = a * b

// Comparision

/*
 
 <
 >
 ==
 !=
 <=
 >=
 
 */

var res = a < b
res = a > b
res = a == b
res = a != b
res = a <= b
res = a >= b


// Logical

/*
 &&
 ||
 !
 
 p  q   p && q  p || q  !p
 0  0     0        0    1
 0  1     0        1    1
 1  0     0        1    0
 1  1     1        1    0
 
 */

res = a < 2000 && b < 10
res = !(a < 2000 || b < 10)

var f = a < b ? 10 : 20.0







