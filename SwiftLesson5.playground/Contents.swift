
let total = 5 + 6 - 8 * 3 - 5 / 10

let div = 10 / 3
let rest = 10 % 3

var small : UInt8 = 0xff

// &+ &* &/ &% &-
small = small &+ 5

let str = "Hi, " + "there!"

let a = 6
let b = 3

var c : Int

c = a > b ? a : b

let text = "123"

let n = Int(text)

if let opt = n {
	c = opt
} else {
	c = 0
}

c = n ?? 4

var sum = 4
sum++
sum
++sum

let good = true

!good

0...5
0..<5

for i in 0...5 {
	print("\(i)")
}
