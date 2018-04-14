func greet(person: String) -> String{
    let greeting = "hello," + person + "!"// person is a parameters
    return greeting
}
print(greet(person: "jiaweiqian")) //jiaweiqian is a arguments

func sayHelloWord() -> String {
    return "Hello world "
    
}
sayHelloWord().description

func greetingAgain(person: String) -> String{
    return "Hello again!" + person + "!"
}

//
func greet(person: String, alreadyGreeted: Bool) -> String{
    if alreadyGreeted {
        return greetingAgain(person: person)
    }else {
        return greet(person: person)
    }
}
print(greet(person: "fanyawen", alreadyGreeted: true))
print(greet(person: "jiaweiqian", alreadyGreeted: false))

func greet1(person: String){
    print("hello , \(person)")
}
greet1(person: "Dave")


func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
       // if currentMin < array[value]
        if currentMin < value {
            currentMin = value
        } else if value > currentMax{
            currentMax = value
            
        }
    }
  return (currentMin,currentMax)
}
if let bounds = minMax(array: [8,9,12,19,23,-8,-120]){
//let bounds = minMax(array: [8,9,12,19,23,-8,-120])
print("Min is the \(bounds.min)")
print("max is the \(bounds.max)")
}

func greetCan(person: String, from hometown: String) -> String{
    return "hello" + person + "glad you could from \(hometown)"
}

print(greetCan(person: "jiaweiqian", from: "huanan"))
