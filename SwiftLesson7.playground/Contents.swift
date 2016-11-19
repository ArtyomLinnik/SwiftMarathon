
let constArray: Array<String> = ["a", "b", "c", "d"]

let arrStr: [String] = ["e", "f"]

constArray.count

var array = [String]()

if array.isEmpty {
	print("array is empty")
}

array += constArray
array += arrStr

array += ["g"]

array.append("h")

var array2 = array

array2[0] = "1"

array
array2

//array[1...4] = ["0"]

array.insert("-", atIndex: 3)
array.removeAtIndex(3)
array

let money = [100, 1, 5, 20, 1, 50, 1, 1, 20]

var sum = 0

for i in 0..<money.count {
	print("\(i)")
	sum += money[i]
}
sum

sum=0

for i in money {
	print("\(i)")
	sum += i
}
sum

sum = 0
for (index, value) in money.enumerate() {
	print("index = \(index) value = \(value)")
	sum += value
}
sum
