/*:
 ### ARRAYS

 Use index(of:) to determine the position of the element "Dan" in players.
*/

var players = ["Alice", "Bob", "Dan", "Eli", "Frank"]

// TODO: Write solution here
if let index = players.index(of: "Dan"){
    print(index)
}

/*:
  Write a for-in loop that prints the players' names and scores.
*/

players = ["Anna", "Brian", "Craig", "Dan", "Donna", "Eli", "Franklin"]
let scores = [2, 2, 8, 6, 1, 2, 1]

// TODO: Write solution here

for (index, player) in players.enumerated(){
    print("\(index + 1). \(player) = \(scores[index])")
}

