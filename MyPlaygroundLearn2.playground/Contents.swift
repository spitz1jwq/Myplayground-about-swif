//##00
func greeting(person: String, day: String)-> String{
    return "hello \(person) ,today is \(day)"
}

greeting(person: "jiaweiqian", day: "wed")//(greeting(person: "jiaweiqian", day: "wed"))
                                          // I don't know wheathe it is  legal？,yeah it is legal!!

//##01
func greet(_ person: String, on day: String)-> String{
    return "hello \(person), today is \(day)"
}
greet("john", on: "wednesday")

func funcName(name: String, sex: String)-> String{
    return " hello\(name),i like \(sex) person"
}
funcName(name: " jiaweiqian ",sex:" df  ")//funcName("jiaweiqian","of") missing argument lable name, sex


func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())//no parameter function

func greet1(person: String, alreadyGreet: Bool)-> String{
    if alreadyGreet{
        return greeting(person: person,day: "??")//!! The same parameter need to kept! keep it all when in call.
    }else{
        return sayHelloWorld()
    }
}
greet1(person: "jiaweiqian", alreadyGreet: true)
//##02
//你可以用元组（tuple）类型让多个值作为一个复合值从函数中返回。
//?????
/*
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
//let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
let bound: Array = [8, -6, 2, 109, 3, 71]
bounds = minMax(bound)
print("min is \(bounds.min) and max is \(bounds.max)")
*/

//## 03
func greet3(person: String, from homeTown: String) -> String{
    return "hello \(person) Glad you cloud visit from \(homeTown)"
}
greet3(person: "jiaweiqian", from: "huaian")
//##04

