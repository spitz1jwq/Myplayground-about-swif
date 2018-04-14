struct Resolution {
    var width = 0
    var height = 0
}

class VideMode {
    var resolution  = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}


let someResolution = Resolution()
let someVideoMode = VideMode()

print("the width of someResolution is \(someResolution.width)")
print("the width of someVideoMode is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280

//
let vga = Resolution(width: 640, height: 400)

//
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.height = 2048
print("height of hd is \(hd.height)")

enum CompassPoint {
    case north, south, east, west
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection

currentDirection = .east
if rememberedDirection == .west {
    print("the rememberedDirection is still .west ")
}


let tenEightly = VideMode()
tenEightly.resolution = hd
tenEightly.interlaced = true
tenEightly.name = "1080I"
tenEightly.frameRate = 25.0

let alsoTenEightly = tenEightly
alsoTenEightly.frameRate = 30.0


print("tenEight.framerate is \(tenEightly.frameRate)")

if tenEightly === alsoTenEightly {
    print("two refer to the same videoMode instance ")
}
