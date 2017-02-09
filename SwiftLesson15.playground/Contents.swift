//: Playground - noun: a place where people can play

let MaxNameLength = 20

enum Direction {
	
	static let emunDescription = "Directions in the game"
	
	case Left
	case Right
	case Top
	case Bottom
	
	var isVertical: Bool {
		return self == .Top || self == .Bottom
	}
	
	var isHorizontal: Bool {
		return !isVertical
	}
}

let d = Direction.Right

d.isVertical

d.isHorizontal

Direction.emunDescription

class Human {
	
	var name: String
	
	class var maxAge : Int {
		 return 100
	}
	
	lazy var storyOfMyLife = "This is story of my entire life..."
	
	var age: Int {
		didSet {
			if age > Human.maxAge {
				age = oldValue
			}
		}
	}
	
	init(name: String, age: Int) {
		self.name = name
		self.age = age
	}
	
}

struct Cat {
	
	var name: String {
		didSet {
			if name.characters.count > MaxNameLength {
				name = oldValue
			}
		}
	}
	
	static let maxAge = 20
	
	static var totalCats = 0
	
	var age : Int {
		didSet {
			if age > Cat.maxAge {
				age = oldValue
			}
		}
	}
	
	init(name: String, age: Int) {
		self.name = name
		self.age = age
		
		Cat.totalCats += 1
	}
	
}


var cat = Cat(name: "Whiten", age: 10)

cat.age = 100

print(cat)

Cat.totalCats

let cat1 = Cat(name: "Whiten1", age: 11)
let cat2 = Cat(name: "Whiten2", age: 12)

Cat.totalCats

var human = Human(name: "John", age: 40)

print(human)


