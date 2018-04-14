//: A UIKit based Playground for presenting user interface
  
/*import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
*/

let apples = 3
let oranges = 5

let quotation = """
i like it and i have \(apples) apples.
"""

var shoppingList = ["catFish","spitz","hello"]
shoppingList[1] = "wtf"

var occupations = [
    "jiaweiqian": "huaian",
    "luojianwei": "luoyang"
]
occupations["Jayne"] = "Public Relations"
// initializer syntax
let emptyArray = [String]()
let emptyArray2 = [Double]()
let emptyDictionary = [String : String]()
let emptyDictionary2 = [Float: Double]()

//if type information can be inferred,you can write the empty type like this
//when you set a new value for a varible , or pass an argument to a function
shoppingList = []
occupations = [:]


var individualScores = [75,23,56,103,19]
var teamScore = 0
for score in individualScores{
    if score > 50 {
        teamScore += 3
    }else {
        teamScore += 1
    }
}
//print("run \(teamScore) times")

/* optional
var optionalName: String? =  "john"
//var optionalName: String? = nil
var greeting = "hello!"
if let name = optionalName{
    "greeting,\(optionalName)"
}
 the let name = optional is to test the optionalName is empty or not
 if it is nil the synax
*/

let nickName: String? = nil
let jackName: String = "jack"
var greeting = "greeting, \(nickName ?? jackName )"
//“using the ?? operator. If the optional value is missing, the default value is used instead”

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
//“ let can be used in a pattern to assign the value that matched the pattern to a constant.”



let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
/*for (_, numbers) in interestingNumbers{
    for number in numbers{
        if number > largest{
            largest = number
        }
    }
}
print(largest)
 */

//use for_in to iterate over items in a dictionary by providing a pair of names to use for each key-value pair.
// to find the number in which kind?
//var kindName: String? = nil
var kindName: String = "1"
for (kind,numbers )in interestingNumbers{
    for number in numbers{
        if number > largest{
            largest = number
            kindName = kind
        }
    }
}
print("The largest number is \(largest) which in \(kindName)")


var m = 1
while m < 100 {
    m *= 2
}
//print ("\(m)")

var n = 2
repeat {
    n *= 2
}while n<100
//print ("\(n)")

var total = 0
for _ in 0..<8 {
    total += 2
}
print(total)






