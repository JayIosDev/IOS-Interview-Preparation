// xcode: set sdk=iOS

import Playgrounds

#Playground {
    
    // Struct
    
    // What is Struct?
    // A Structure is value type that allow us to group related properties and methods into single type
    
    // We use the struct keyword to define a structure.
    
    //    Why do we use structures?
    //    - To organize related data.
    //    - To create custom data types.
    //    - To improve code readability and reusability.
    //    - To benefit from value-type behavior.
    
    // Stored Properties
    // Stored properties are variables or constants that stores values inside structure
    struct User {
        var name: String
        let id: Int
    }
    
    // Computed Properties
    // Computed properties dont store values , instead it calculate and return values dynamically
    struct Rectangle {
        var width: Double
        var height: Double
        
        var area: Double {
            return width * height
        }
    }
    
    let rectangle = Rectangle(width: 10, height: 5)
    
    print(rectangle.area) // 50.0
    
    //    A computed property can also have a setter:
    struct Rectangle {
        var width: Double
        var height: Double
        
        var area: Double {
            get {
                width * height
            }
            set {
                width = newValue / height
            }
        }
    }
    
    
    //    newValue represents the value being assigned to the computed property's setter.
    
    // Property Observers
    // Property Observers allows us to excute when stored property value change
    //    Swift provides two property observers:
    //    - willSet – Called just before the value changes.
    //    - didSet – Called immediately after the value changes.
    
    struct User {
        var age: Int {
            willSet {
                print("New age: \(newValue)")
            }
            
            didSet {
                print("Old age: \(oldValue)")
            }
        }
    }
    
    var user = User(age: 25)
    
    user.age = 30
    
    struct Counter {
        let count = 0
        
        mutating func increment() {
            count += 1
        }
    }
    
    
    //    Structures Are Value Types
    //    This is one of the most important concepts.
    //
    //    When you assign a structure instance to another variable, Swift copies its value.
    struct User {
        var name: String
    }
    
    var user1 = User(name: "John")
    
    var user2 = user1
    
    user2.name = "David"
    
    print(user1.name) // John
    print(user2.name) // David
    
    //    Why?
    //
    //    Because user2 receives an independent value copy of user1.
    //
    //    Changing user2 does not change user1.
    //
    
    
    
    // Important points about Structures
    // 1. Structures are value types.
    // 2. Structures are declared using the struct keyword.
    // 3. Structures can contain stored properties.
    // 4. Structures can contain computed properties.
    // 5. Structures support property observers: willSet and didSet.
    // 6. Structures can contain instance methods and static methods.
    // 7. Use mutating to modify stored properties inside
    //    an instance method.
    // 8. Swift automatically provides a memberwise initializer
    //    when an initializer is not explicitly defined.
    // 9. Structure instances are copied when assigned to another variable.
    // 10. Changing one structure copy does not affect another.
    // 11. Structures do not support inheritance.
    // 12. Use structures to represent independent values and data models.
}
