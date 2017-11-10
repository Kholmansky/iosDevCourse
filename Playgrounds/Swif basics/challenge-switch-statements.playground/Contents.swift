import Foundation

/*:
 ### SWITCH STATEMENTS
 
 Write a switch statement that takes an age as an integer and prints out the life stage related to that age. You can make up the life stages, or use my categorization as follows: 0-2 years, Infant; 3-12 years, Child; 13-19 years, Teenager; 20-39, Adult;40-60, Middle aged; 61+, Elderly.
 */

// TODO: Write solution here
let age = 24
switch age {
  case 0...2:
    print("Infant")
  case 3...12:
    print ("Child")
  case 13...19:
    print("Teenager")
  case 20...39:
    print("Adult")
  case 40...60:
    print ("Middle aged")
  case _ where age >= 61:
    print ("Elderly")
  default:
    print("invalid age")
}

/*:
 Write a switch statement that takes a tuple containing a string and an integer.  The string is a name, and the integer is an age. Use the same cases that you used in the previous exercise and let syntax to print out the name followed by the life stage. For example, for the author of thee challenges, it would print out "Matt is an adult.".
 */

// TODO: Write solution here
let man = (name:"Maxim", age: 25)

switch man {
case (let name, 0...2):
    print("\(name) is Infant")
case (let name, 3...12):
    print ("\(name) is Child")
case (let name, 13...19):
    print("\(name) is Teenager")
case (let name, 20...39):
    print("\(name) is Adult")
case (let name, 40...60):
    print ("\(name) is Middle aged")
case (let name, _) where age >= 61:
    print ("\(name) is Elderly")
default:
    print("invalid age")
}

