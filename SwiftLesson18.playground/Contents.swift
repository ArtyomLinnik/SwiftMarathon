class Human {
	
	var firstName: String = ""
	var lastName: String = ""
	
	var fullName: String {
		return firstName + " " + lastName
	}
	
	func sayHello() -> String {
		return "Hello"
	}
}

class Student : Human {
	override func sayHello() -> String {
		return super.sayHello() + " my friend"
	}
}

class Kid : Human {
	override func sayHello() -> String {
		return "agu"
	}
	
	override var fullName: String {
		return firstName
	}
	
	override var firstName: String {
		set {
			super.firstName = newValue + " ;)"
		}
		get {
			return super.firstName
		}
	}
	
	override var lastName: String {
		didSet {
			print("new value = " + self.lastName)
		}
	}
}

let human = Human()

human.firstName = "Alex"
human.lastName = "Petrov"

print(human)

human.sayHello()

let student = Student()
student.firstName = "Ivan"
student.lastName = "Ivanov"
student.sayHello()

let kid = Kid()
kid.firstName = "Kid"
kid.lastName = "dfs"
kid.fullName
kid.sayHello()
		