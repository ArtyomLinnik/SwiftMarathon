import Foundation

var str = String()

str = str + "a"
str += "b"

/*
var a = 5
var b = a

++a
b
*/

var a = "a"
var b = a

let char1 : Character = "x"

a.append(char1)

//for c in "Hello World!" {
//	print(c)
//}

// Foindation
//(a as NSString).length
//NSString(string: a).length


let heart = "\u{1f496}"


let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"

let fun: Character = "ъ\u{301}\u{20dd}"

let funString = "what is this? -> \(fun)"

funString.characters.count
//(funString as NSString).length

if funString == "aa" {
	
} else {
	print("not equal")
}

funString.hasPrefix("what")

funString.hasSuffix("ъ\u{20dd}\u{301}")

let d = "1"
let e = "1a"
let f = "2"

let str3 = "\(Int(d)!) + \(Int(e)) + \(Int(f)!)"

let alphabet = "abcdefghijklmnopqrstuvwxyz"

let search: Character = "e"


