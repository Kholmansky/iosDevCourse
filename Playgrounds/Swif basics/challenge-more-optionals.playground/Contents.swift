/*:
 ### MORE OPTIONALS
 
 Using your `myFavoriteSong` variable from the previous challenge, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t have a favorite song."
 */

// TODO: Write solution here
let myFavouriteSong : String? = "My song"

if let song = myFavouriteSong {
    print(song)
} else {
    print("No favourite song")
}

/*:
 Change `myFavoriteSong` to the opposite of what it is now. If it’s nil, set it to a string; if it’s a string, set it to nil. Observe how your printed result changes.
 */

// TODO: Follow instructions


/*:
 Write a function called `printNickname` that takes an optional String as a parameter. Use the `guard` statement to try to unwrap the nickname, and if it fails print an error and return. Otherwise, print the unwrapped nickname.
 */

// TODO: Write solution here
func printNickName(nick: String?){
    guard let nick = nick else{
        print("no nick")
        return
    }
    print ("nick is \(nick)")
}
printNickName(nick: nil)

