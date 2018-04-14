enum CompassPoint{
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter,saturn, uranus, neptune
}

var directionToHead = CompassPoint.west
// because the directionToHead is declared as a Compass Point, you can use like this.
directionToHead = .east 

directionToHead = .south
switch directionToHead {
case .north:
    print("lots of planets have a north")
case .south:
    print("lots of planets have a south")
case .east:
    print("lots of planets have a south")
case .west:
    print("lots of planets have a south")
}

let somePlanet = Planet.mars
switch somePlanet {
case .mars:
    print("here is mars!")
//case .east:
    //print("error")
default:
    print("Not a safe place for humans")

}
//pattern cannot match values of type 'planet' because the somePlanet is declared as a eunm.
//Tips: a Switch must be exhaustive when considering an enumeration's case.to avoid be omitted.or use DEFAULT



