
/*:
 ## CLASSES VS STRUCTURES

 Imagine you're writing a movie-viewing application in Swift. Users can create lists of movies and share those lists with other users.
 
 Create a `User` and a `List` class that uses reference semantics to help maintain lists between users.
 
 - `User` - Has a method `addList(_:)` which adds the given list to a dictionary of `List` objects (using the `name` as a key), and `list(forName:) -> List?` which will return the `List` for the provided name.
 - `List` - Contains a name and an array of movie titles. A `print` method will print all the movies in the list.
 - Create `jane` and `john` users and have them create and share lists. Have both `jane` and `john` modify the same list and call `print` from both users. Are all the changes reflected?
*/

// TODO: Write solution here

class List {
    let name : String
    var movies : [String] = []
    
    init (name : String){
        self.name = name
    }
    
    func print(){
        Swift.print("Movie list : \(name)")
        for movie in movies {
            Swift.print(movie)
        }
        Swift.print("\n")
    }
}

class User {
    var lists : [String : List] = [:]
    
    func addList (_ list : List){
        lists[list.name] = list
    }
    func list(forName name: String) -> List? {
        return lists[name]
    }
}

let jane = User()
let john = User()

var actionList = List(name: "Action")
jane.addList(actionList)
john.addList(actionList)

jane.lists["Action"]?.movies.append("Rembo")
jane.lists["Action"]?.movies.append("Terminator")

john.lists["Action"]?.movies.append("League")

john.lists["Action"]?.print()
jane.lists["Action"]?.print()

/*:
 
 What happens when you implement the same with structs and what problems do you run into?
 */

 // TODO: Modify code above

struct ListStruct {
    let name : String
    var movies : [String] = []
    
    init (name : String){
        self.name = name
    }
    
    func print(){
        Swift.print("Movie list : \(name)")
        for movie in movies {
            Swift.print(movie)
        }
        Swift.print("\n")
    }
}

struct UserStruct {
    var lists : [String : ListStruct] = [:]
    
    mutating func addList (_ list : ListStruct){
        lists[list.name] = list
    }
    func list(forName name: String) -> ListStruct? {
        return lists[name]
    }
}

var jane2 = UserStruct()
var john2 = UserStruct()

var actionList2 = ListStruct(name: "Action")
jane2.addList(actionList2)
john2.addList(actionList2)

jane2.lists["Action"]?.movies.append("Rembo")
jane2.lists["Action"]?.movies.append("Terminator")

john2.lists["Action"]?.movies.append("League")

john2.lists["Action"]?.print()
jane2.lists["Action"]?.print()

/*:

 Your challenge here is to imagine a set of objects to support a t-shirt store. Decide if each object should be a class or a struct, and why. You don't need to write any code; just decide whether to use a class or a struct for each.
 
 - `TShirt` - Represents a shirt style you can buy. Each `TShirt` has a size, color, price, and an optional image on the front.
 - `User` - A registered user of the t-shirt store app. A user has a name, email, and a `ShoppingCart` (below).
 - `Address` - Represents a shipping address, containing the name, street, city, and zip code.
 - `ShoppingCart` - Holds a current order, which is composed of an array of `TShirt` that the `User` wants to buy, as well as a method to calculate the total cost. Additionally, there is an `Address` that represents where the order will be shipped.

 */
1)-struct
2)-
3)-
4)-
/*
 Solution:

 - TShirt: A TShirt can be thought of as a value, because it doesn't represent a real shirt, only a description of a shirt. For instance, a TShirt would represent "a large green shirt order" and not "an actual large green shirt". For this reason, TShirt can be a struct instead of a class.
 - User: A User represents a real person. This means every user is unique so User is best implemented as a class.
 - Address: Addresses group multiple values together and two addresses can be considered equal if they hold the same values. This means Address works best as a value type (struct).
 - ShoppingCart: The ShoppingCart is a bit tricker. While it could be argued that it could be done as a value type, it's best to think of the real world semantics you are modeling. If you add an item to a shopping cart, would you expect to get a new shopping cart? Or put the new item in your existing cart? By using a class, the reference semantics help model real world behaviors. Using a class also makes it easier to share a single ShoppingCart object between multiple components of your application (shopping, ordering, invoicing, ...).
 */
