
class Shape {
    var numberOfsides = 0
    let colorOfshape = "red"
    func simpleDescription() -> String{
        return "a shape with \(numberOfsides) sides"
    }
    func colorDescription() -> String{
        return " the color of Shape is \(colorOfshape) "
    }
}
var shape = Shape()
shape.numberOfsides = 7
var shapeDescription = shape.simpleDescription()
var colorOfit = shape.colorDescription()


class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
let test2 = NamedShape(name: "a shape")
//it don't need to use the key word "new" to create a object!!

class Square: NamedShape{
    var sideLength: Double
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
    }
    func Area() -> Double{
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 10.0, name: "my test square")


class Circle: NamedShape{
    var radius: Int = 0
    init(radius: Int, name: String){
        self.radius = radius
        super.init(name: name)
    }
    func Area()-> Int{
        return radius * radius
    }
    override func simpleDescription() -> String {
        return "this is a circle about override "
    }
}
let test3 = Circle(radius: 4, name: "redCircle")
test3.Area()
test3.simpleDescription()

//getter and setter
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    init(sideLength: Double,name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
}
    var perimeter: Double{
        get {
            return 3.0 * sideLength
        }
        set(newValue) {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

let triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)


//
/*
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
*/

5

