import Foundation
/*:
 ### TUPLES
 
 Declare a constant tuple that contains three Int values followed by a Double. Use this to represent a date (month, day, year) followed by an average temperature for
 that date.
 */

// TODO: Write solution here

let temp1 = (10, 20, 2017, 30)
/*:
 Change the tuple to name the constituent components. Give them names related to the data that they contain: month, day, year and averageTemperature.
 */

// TODO: Write solution here

let temp2 = (month:12, day:22, year:2017, averageTemperature:17)
/*:
 In one line, read the day and average temperature values into two constants. You’ll need to employ the underscore to ignore the month and year.
 */

// TODO: Write solution here

let (_, day, _, temp) = temp2
day
temp
/*:
 Up until now, you’ve only seen constant tuples. But you can create variable tuples, too. Change the tuple you created in the exercises above to a variable by using var instead of let. Now change the average temperature to a new value. */

// TODO: Write solution here

var temp3 = (month:12, day:22, year:2017, averageTemperature:17)
temp3.averageTemperature = 77
temp3




