import UIKit

struct Position{
    var x: Int
    var y: Int
}

enum Direction{
    case Up
    case Down
    case Left
    case Right
}

struct Go {
    let direction: Direction
    let distance: Int
}

class Car
{
    let color: String
    let model: String
    var position:  Position

    
    init(model: String, color:String, position: Position){
        self.color = color
        self.model = model
        self.position = position
    }
    
    func move(direction: Direction, distance: Int){
        switch direction {
        case Direction.Up:
            position.y += distance
        case Direction.Down:
            position.y -= distance
        case Direction.Left:
            position.x -= distance
        case Direction.Right:
            position.x += distance
        //default:
            //print("Move " , Direction , "on " , distance , "  points")
        }
    }
    
    public func execute(command: Go) {
        self.move(direction: command.direction, distance: command.distance)
    }
}

let car = Car(model: "Tesla", color: "Yellow", position: Position(x: 0, y: 0))
print("Initial position: x: \(car.position.x), y: \(car.position.y)")

car.move(direction: .Left, distance: 8)
car.move(direction: .Up, distance: 4)
print("Position after move: x: \(car.position.x), y: \(car.position.y)")       // x: -8, y: 4

car.execute(command: Go(direction: .Right, distance: 10))
car.execute(command: Go(direction: .Down, distance: 2))
print("Position after execute: x: \(car.position.x), y: \(car.position.y)")    // x: 2, y: 2
