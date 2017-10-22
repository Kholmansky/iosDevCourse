/*:
 ### DICTIONARIES

 Create a dictionary with the following keys: name, profession, country, state, and city. For the values, put your own name, profession, country, state, and city.
 */

// TODO: Write solution here
var Max = ["name": "Maxim", "profession": "developer", "country": "Russia", "state": "Tomsk obl", "city": "Tomsk"]
print(Max)

/*:
 You suddenly decide to move to Albuquerque. Update your city to Albuquerque, your state to New Mexico, and your country to USA.
 */

// TODO: Write solution here
Max["city"] = "Albuquerque"
Max["state"] = "New Mexico"
Max["country"] = "USA"
print(Max)

/*:
 Given a dictionary in the above format, write a function that prints a given person's city and state.
 */

// TODO: Write solution here
func printPersonsCityAndState(ofPerson person: [String: String]){
    if let state = person["state"], let city = person["city"]{
        print("Person live in \(city) \(state)")
    }
}

printPersonsCityAndState(ofPerson: Max)




