var apples : Int? = 5

//apples = nil

if apples == nil {
	print("nil apples")
} else {
	let a = apples! + 2
}

if var number = apples {
	number += 2
} else {
	print("nil apples")
}

let age :String = "20"


if Int(age) != nil {
	let ageNumber = Int(age)!
}

if let ageNumber = Int(age) {
	ageNumber
}

var apples2 :Int! = nil

apples2 = 2

//assert(apples2 != nil, "oh no")

apples2 = apples2 + 3

var a : Int? = 5

if let b = a {
	print(b)
} else {
	print("nil")
}


var response : (statusCode: Int, message: String?, errorMessage: String?)
var student : (name: String!, carPlate: String?, grade: Int?)






