/*:
 ### CLOSURES

 Create a constant array called `names` which contains some names as strings (any names will do — make sure there’s more than three though!). Now use `reduce` to create a string which is the concatenation of each name in the array.
 */

// TODO: Write solution here

let names = ["Ann", "Max", "Kate", "Andrew", "Matt", "Alice"]

let allNames = names.reduce("") { result, name in
   return result + " " + name
}
print(allNames)

/*:
 Using the same `names` array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.) */

// TODO: Write solution here
let namesWithMoreThan4Characters = names.filter { name in
   return name.count > 4
}.reduce("") { result, name in
        return result + " " + name
}

print(namesWithMoreThan4Characters)

/*:
Create a constant dictionary called `namesAndAges` which contains some names as strings mapped to ages as integers. Now use `filter` to create a dictionary containing only people under the age of 18. */

// TODO: Write solution here

let namesAndAges = ["Ann":14, "Max":25, "Matt":30, "Andrew":44]
let peopleUnder18 = namesAndAges.filter() {nameAndAge in
    return nameAndAge.value < 18
}
print (peopleUnder18)
/*:
 Using the same `namesAndAges` dictionary, filter out the adults (those 18 or older) and then use `map` to convert to an array containing just the names (i.e. drop the ages). */

// TODO: Write solution here

let peopleOver18 = namesAndAges.filter() {nameAndAge in
    return nameAndAge.value > 18
}.map { nameAndAge in 
    return nameAndAge.key
}
        
print(peopleOver18)
