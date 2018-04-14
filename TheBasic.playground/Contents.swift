/*
let minValue = UInt8.min
let maxValue = UInt8.max

// ## Tuples
let http404Error = (404, "not found")

let (Code, Message) = http404Error; print("\(Code)")
print("\(Message)")

let (justPrintcode,_) = http404Error
print("just print code \(justPrintcode)")

print("use the index to realize code \(http404Error.0)")
print("use the index to realize  \(http404Error.1)")


let testTuple = (404,505,"not found",[4,5,6])
let (_,_,_,printArray) = testTuple
print("\(printArray)")
print("\(testTuple.2)")

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")

*/
/*
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

let possibleWordTonumber = "hello world"
let convertedWordTonumber = Int(possibleWordTonumber)

let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName


for guxiaoyao in 1...5 {
    print("\(guxiaoyao) times 5 is \(guxiaoyao * 5)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<names.count{
    print("\(names[i])")
}
*/
//## Array !!!!!!
/*
var emptyString = ""
var anotherEmptyString = String()

if anotherEmptyString.isEmpty {
    print("string is empty")
}

if emptyString.isEmpty {
    print("string is empty")
}

//let vga = Resolution(width: 640, height: 480)
let string1 = "hello"
let string2 = "nihao "
var string3 = string1 + string2

let exclamationMark: Character = "!"
string3.append(exclamationMark)

let  string = "🐥"

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

let greeting = "Guten tag"
greeting[greeting.startIndex]

greeting[greeting.index(before: greeting.endIndex)]

let arrayTest = [10,11,12,13,14]
arrayTest[arrayTest.startIndex]
arrayTest[arrayTest.index(after: arrayTest.startIndex)]

var welcome = "hello"
welcome.insert("!",at: welcome.endIndex)
welcome.insert(contentsOf:" there".characters, at: welcome.index(before: welcome.endIndex))

var someInts = [Double]()
print("someInts is of type [Double] with \(someInts.count) items.")
someInts.append(2.0)

var threeDouble = Array(repeating: 0.0, count: 4)

var four = someInts + threeDouble


var shopping: [String] = ["eggs","milk"]
var shoppingMoney: [Double] = [1.0, 23.0, 34.9]
var shoppingMoney2 = [1.0, 23.0, 34.9]

for item in shopping{
    print(item)
}
*/
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items")

letters.insert("h")
print("letters is of type Set<Character> with \(letters.count) items")

letters.insert("o")
letters.insert("y")
letters.capacity
letters.contains("o")// it is true!

letters = []
print("letters is of type Set<Character> with \(letters.count) items")

var favoriteGenres: Set<String> = ["Rock","Classical","Hip hop"]
favoriteGenres.contains("yanyang")
//favoriteGenres.insert(89) we can not pass a different Type!

// var favouiteGenres0: Set<Any> = ["yanyang","huliang",520]

favoriteGenres.insert("jazz")
let removedGenres = favoriteGenres.remove("Hip hop")
if favoriteGenres.contains("Hip hop") {
    print("it include it")
}else{
    print("it delete the \"hip hop\"")
}

for genre in favoriteGenres{
    print("\(genre)")
}


for genre in favoriteGenres.reversed(){
    print("\(genre)")
}


let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitalPrimeNumber: Set = [2,3,5,7]
oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitalPrimeNumber).sorted()
oddDigits.symmetricDifference(singleDigitalPrimeNumber).sorted()



let houseAnimal: Set = ["dog","cat"]
let farmAnima: Set = ["dog","cat","fish","chicken"]
let cityAnima: Set = ["bird","mouse"]

houseAnimal.isSubset(of: farmAnima)
farmAnima.isSuperset(of: houseAnimal)
cityAnima.isDisjoint(with: houseAnimal)

var namesOfintegers = [Int: String]()
namesOfintegers[16] = "sixteen"
namesOfintegers = [:]// is once again empty dictionary of type [Int: String]



var airports: [String: String] = ["gu": "xiaoyao","yan": "yang"]

airports.count
airports.isEmpty
airports["jia"] = "weiqian"
airports["DUB"] = "Dublin"
print("the dictionary has the \(airports.count) ")
print("\(airports.description)")

if let oldValue = airports.updateValue("Dublin airport", forKey: "DUB"){
    print("the old value for DUB was \(oldValue)")
}
print("\(airports.description)")

airports["APL"] = "Apple International"
airports["APL"] = nil

if let removeValue = airports.removeValue(forKey: "DUB"){
    print("the removed airports's name is \(removeValue)")
}
print("\(airports.description)")

for (airports, airportName) in airports{
    print("\(airports): \(airportName)")
}

let airportKey = [String](airports.keys)
let airportName = [String](airports.values)



