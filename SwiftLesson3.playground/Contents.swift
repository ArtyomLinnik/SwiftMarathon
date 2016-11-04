// Tuples

let simpleTuple = (1, "Hello", true, 2.4)

let (number, greatings, check, decimal) = simpleTuple

number
greatings
check
decimal

simpleTuple.0
simpleTuple.1
simpleTuple.2
simpleTuple.3

let (_, _, check2, _) = simpleTuple

check2

var tuple = (index:1, phrase:"Hello", registered:true, latency:2.4)
tuple.index
tuple.phrase
tuple.registered
tuple.latency

tuple.index = 2

print(tuple)
