/*
let names = ["anna","alex","brain","jack"]
for name in names {
    print("hello , \(name)")
}

let numerOfLegs = ["spider": 8, "ant": 6]
for (nameOfAnimal, countOfAnimal) in numerOfLegs {
    print("\(nameOfAnimal) has \(countOfAnimal) legs")
}

for index in 1...5{
    print("\(index) times 5 is \(index * 5) ")
}

let base = 3
let power = 10
var answer = 1
for _ in 1..<power {
    answer *= base
}
print("\(base) is up to \(answer)")

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("hello")
case "z":
    print("yeah, it is a z")
default:
    print("some other character" )
}

let anotherCharacter: Character = "a"
switch anotherCharacter{
case "A","a":
    print("a")
case "B":
    print("B")
default:
    print("abc")
}

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount{
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of "
case 100..<1000:
    naturalCount = "hundreds of "
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings)")

let somePoint = (1,1)
switch somePoint{
case (0,0):
    print("\(somePoint) is at the origin")
case (_,0):
    print("\(somePoint) is at the X-axis")
case (0,_) :
        print("\(somePoint) is at the Y-axis")
case (-2...2,-2...2):
    print("\(somePoint) is at the box! ")
    
default:
     print("\(somePoint) is out of the box")
}
*/

let yetAnotherPoint = (1,-1)
switch yetAnotherPoint {
case let(x,y) where x == y:
    print("\(yetAnotherPoint) is on the line x == y")
case let(x,y) where x == -y:
    print("\(yetAnotherPoint) is on the line x == -y")
case let(x,y):
    print("(\(x), \(y)) is just some arbitrary point")
}
