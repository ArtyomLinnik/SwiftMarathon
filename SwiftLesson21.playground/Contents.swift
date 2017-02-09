//: Playground - noun: a place where people can play

import Foundation

class Human {
	var weight: Int
	var age: Int
	
	init(weight: Int, age: Int) {
		self.weight = weight
		self.age = age
	}
	
	convenience init(age: Int) {
		self.init(weight: 0, age: age)
	}
	
	convenience init(weight: Int) {
		self.init(weight: weight, age: 0)
	}
	
	convenience init() {
		self.init(weight: 0)
	}
	
	func test() {}
	
	deinit {
		print("Human deinitialized")
	}
}

enum Color: Int {
	case Black
	case White
	
	init?(_ value: Int) {
		switch value {
		case  0: self = .Black
		case 1: self = .White
		default:
			return nil
		}
	}
}

struct Size {
	var width: Int
	var height: Int
	
	init?(width: Int, height: Int) {
//		return nil
		self.width = width
		if height < 0 {
			return nil
		}
		self.height = height
	}
}

class Friend : Human {
	var name: String!
	
	let skin: Color = {
		let  random = Int(arc4random_uniform(2))
		return Color(random)!
	}()

	init?(name: String) {
		self.name = name
		super.init(weight: 0, age: 0)
		if name.isEmpty {
			return nil
		}
	}
	
	required init() {
		self.name = "Hi"
		super.init(weight: 0, age: 0)
	}
	
	deinit {
		print("Friend deinitialized")
	}
}

let a = Color(0)

let b = Color(rawValue: 2)

let f = Friend(name: "a")
f!.name

class BestFriend : Friend {
	
	override init(name: String) {
		if name.isEmpty {
			super.init()
		} else {
			super.init( name: name)!
		}
	}
	
	required init() {
		super.init()
	}
	
	deinit {
		print("BestFriend deinitialized")
	}
}

let b1 = BestFriend(name: "")
b1.name

let f1 = Friend(name: "s")
f1?.skin
let f2 = Friend(name: "s")
f2!.skin
let f3 = Friend(name: "s")
f3!.skin


struct Test {
	var bestFriend: BestFriend? = BestFriend(name: "")
}

var test: Test? = Test()
test!.bestFriend = nil

var f4 = Friend(name: "")


