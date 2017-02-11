//
//  main.swift
//  SwiftLesson22
//
//  Created by Artyom Linnik on 2/10/17.
//  Copyright © 2017 Artyom Linnik. All rights reserved.
//

import Foundation

var playground = true

class Student {
	
	unowned var teacher: Teacher
	
	init(teacher: Teacher) {
		self.teacher = teacher
	}
	
	deinit {
		print("goodbye student")
	}
}

class Teacher {
	
	var student: Student!
	
	init() {
		student = Student(teacher: self)
	}
	
	deinit {
		print("goodbye teacher")
	}
}

var closure: (() -> ())?

if playground {
	
	var teacher = Teacher()
	
//	if playground {
//		var student = Student()
//		teacher.studentn = student
//		student.teacher = teacher
//	}
	
	var student = teacher.student
	closure = {
		[weak student] in
		print("\(student)")
	}
	
	
	
	print("exit playground")
}


var x = 10
var y = 20

var closure3: () -> () = { [x] in
	print("\(x) \(y)")
}

var closure2: (Int) -> Int = {[x,y] (a: Int) -> Int in
	
	print("\(x) \(y)")
	
	return a
}


closure2(1)

x = 30
y = 40

closure2(1)








print("End")
