//: Playground - noun: a place where people can play

struct Point {
	var x: Int
	var y: Int
	
//	mutating func moveBy(x: Int, andY y: Int) {
//		self.x += x
//		self.y += y
//	}
	
	mutating func moveBy(x: Int, andY y: Int) {
		self = Point(x: self.x + x, y: self.y + y)
	}
}

enum Color {
	
	static func numberOfElements() -> Int {
		return 2
	}
	
	case White
	case Black
	
	mutating func invert() {
		self = self == .White ? .Black : .White
	}
}

var c = Color.White

c.invert()
c.invert()

Color.numberOfElements()
 
func move(point: Point, byX x: Int, andY y: Int) -> Point {
	var point = point
	point.x += x
	point.y += y
	return point
}


var p = Point(x: 1, y: 2)

//p = move(point: p, byX: 2, andY: 3)

p.moveBy(x: 10, andY: 3)

print(p)
