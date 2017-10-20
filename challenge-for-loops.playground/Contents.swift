import Foundation

/*:
 ### FOR LOOPS

Create a constant called range and set it equal to a range starting at 1 and ending with 10 inclusive. Write a for loop which iterates over this range and prints the square of each number.
 */

// TODO: Write solution here
let range = 1...10
for i in range {
    print (i * i)
}

/*:
 Write a for loop to iterate over the same range as in the exercise above and print the square root of each number. Hint: use `sqrt(...)`. You’ll need to type convert your loop constant.
 */

// TODO: Write solution here
for i in range {
    print(sqrt(Double(i)))
}

/*:
  The code below iterates over only even rows. Change this to use a where clause on the first for loop to skip even rows instead of using continue. Check that the sum is still 448 after your modifications.
 */

// TODO: Modify per instructions above

var sum = 0
for row in 0..<8 where row % 2 == 1{
  for column in 0..<8 {
    sum += row * column
  }
}
sum
