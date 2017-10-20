import Foundation

/*:
 ### WHILE LOOPS
 Create a variable named `counter` and set it equal to 0. Create a `while` loop with the condition `counter < 10` which prints out `counter` is `X` (where `X` is replaced with counter value) and then increments `counter` by 1.
 */

// TODO: Write solution here
var counter = 0
while (counter < 10){
    print ("Counter is \(counter)")
    counter += 1
}

/*:
 Create a variable named counter and set it equal to 0. Create another variable named roll and set it equal to 0. Create a repeat-while loop. Inside the loop, set roll equal to Int(arc4random_uniform(6)) which means to pick a random number between 0 and 5. Then increment counter by 1. Finally, print After X rolls, roll is Y where X is the value of counter and Y is the value of roll. Set the loop condition such that the loop finishes when the first 0 is rolled.
 */

// TODO: Write solution here
counter = 0
var roll = 0
repeat {
    roll = Int(arc4random_uniform(6))
    counter += 1
    print ("After \(counter) rolls, roll is \(roll)")
}while roll != 0
