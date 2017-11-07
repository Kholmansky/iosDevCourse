import Foundation

//: ### PROPERTIES
//: Create a struct named `Temperature` that contains a stored property `degreesF` that is a `Double`, which will store the degrees in Fahrenheit. Then add a computed property called `degreesC` that is a `Double`, that calculates the degrees in Celsius. Hint: `degreesC` should be equal to `(degreesF - 32) / 1.8`.

// TODO: Write solution here
struct Temperature {
    var degreesF : Double
    var degreesC : Double {
        return ((degreesF - 32) / 1.8)
    }
}
//: Modify the `degreesC` computed property to add a setter, so that by setting the degrees in Celsius, it actually updates the degrees in Fahrenheit.

// TODO: Modify code above

struct Temperature1 {
    var degreesF : Double
    
    var degreesC : Double {
        get {
            return ((degreesF - 32) / 1.8)
        }
        set {
            degreesF = newValue * 1.8 + 32
        }
    }
}

var temp = Temperature1(degreesF: 32)
temp.degreesC
temp.degreesC = 100
temp.degreesF
//: Modify the `degreesF` stored property to print out "Too hot!" if it is set to above 100 degrees Fahrenheit.

// TODO: Modify code above
struct Temperature2 {
    var degreesF : Double {
        didSet{
            if degreesF > 100 {
                print("Too Hot!")
            }
        }
    }
    
    var degreesC : Double {
        get {
            return ((degreesF - 32) / 1.8)
        }
        set {
            degreesF = newValue * 1.8 + 32
        }
    }
}

var temp1 = Temperature2(degreesF: 32)
temp1.degreesF = 200


