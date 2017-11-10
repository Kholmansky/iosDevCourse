
/*:
 ## INITIALIZERS

 Create a class named `Animal` that has a single stored property named `name`, that is a `String`. It should have a required initializer that takes `name` as a parameter, and a function `speak()` that does nothing.
*/

// TODO: Write solution here
class Animal {
    var name: String
    
   required init(name : String){
        self.name = name
    }
    
    func speak(){
        
    }
}

/*:
 Create a class named `Dog` that inherits from `Animal`. It should have a single stored property named `numTricksLearned`, that is an `Int`. It should implement the required initializer, defaulting `numTricksLearned` to `0`, and it should call `speak()` at the end of the initializer. Finally, it should override the function `speak()` to say `Bow Wow`.
*/

// TODO: Write solution here

class Dog : Animal {
    var numTricksLearned : Int
    
    required init (name: String){
        numTricksLearned = 0
        super.init(name:name)
        speak()
    }
    //
    init (name: String, numTricksLearned: Int) {
        self.numTricksLearned = numTricksLearned
        super.init(name: name)
        speak()
    }
    
    override func speak() {
        print ("Bow Wow")
    }
}

var dog = Dog(name: "Bobby", numTricksLearned: 2)

/*:
 Add a second (non-required) initializer to `Dog` that takes both the `name` and `numTricksLearned` as parameters.
*/

// TODO: Modify solution above

/*:
 In an extension, add a convenience initializer to `Dog` that defaults the dog's name to your favorite dog's name, with however many tricks the dog has learned.
*/

// TODO: Write solution here
extension Dog {
    convenience init (){
        self.init(name: "Bobic", numTricksLearned: 3)
    }
}
let dog2 = Dog()

