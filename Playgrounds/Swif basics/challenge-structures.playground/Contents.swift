import Foundation
//: ### STRUCTURES
//: Write a struct that represents a pizza order. Include toppings, size and any other option you’d want for a pizza.

// TODO: Write solution here
struct PizzaOrder{
    let toppings: String
    let size : Int
}

let pizza = PizzaOrder(toppings: "Cheese", size: 15)

//: Change `distance(from:to:)` to use `Location`s as parameters instead of x-y tuples.
struct Location {
  let x: Int
  let y: Int
}

// TODO: Modify this
func distance(from source: Location, to target: Location) -> Double {
  let distanceX = Double(source.x - target.x)
  let distanceY = Double(source.y - target.y)
  return sqrt(distanceX * distanceX + distanceY * distanceY)
}

//: Change `contains(_:)` to call the new `distance(from:to:)` with `Location`s.

struct DeliveryArea {
  let center: Location
  var radius: Double

  func contains(_ location: Location) -> Bool {
    // TODO: Modify this
    let distanceFromCenter =
      distance(from: location,
               to: center)

    return distanceFromCenter < radius
  }
    func overlaps(with area: DeliveryArea) ->Bool {
        return distance(from: center, to: area.center) <= (radius + area.radius)
    }
}

//: Add a method `overlaps(with:)` on `DeliveryArea` that can tell you if the area overlaps with another area.

let area1 = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
let area2 = DeliveryArea(center: Location(x: 5, y: 9), radius: 2.5)
// TODO: Test if areas 1 and 2 overlap (should be false)
area1.overlaps(with: area2)

let area3 = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
let area4 = DeliveryArea(center: Location(x: 3, y: 5), radius: 2.5)
// TODO: Test if areas 3 and 4 overlap (should be true)
area3.overlaps(with: area4)
