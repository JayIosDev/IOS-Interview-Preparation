
// Classes

// What is Class in Swift?
// A Class is a reference type that allows to group properties , methods , inittializers into as single data type
class Animal {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func makeSound() {
        
    }
}

//Properties in Classes
//Classes support the same property types that you learned in structures.
//
//Stored properties:
//
//Store values inside an instance.
class Employee {
    var name = "John"
    var salary = 50000
}


//Computed properties:

//Calculate and return values when accessed.
class Rectangle {
    var width = 10
    var height = 5
    
    var area: Int {
        width * height
    }
}


//Property observers:
//
//willSet and didSet observe changes to stored properties.
class User {
    var age: Int = 25 {
        willSet {
            print("New age: \(newValue)")
        }
        
        didSet {
            print("Old age: \(oldValue)")
        }
    }
}

let user = User()
user.age = 30

// Reference types in Classes
// Classes are the reference types , when you assign class to another variable it copies the reference not actual object , when we change properties in second it effects first one too
class User {
    var name = "John"
}

let user1 = User()

let user2 = user1

user2.name = "David"

print(user1.name) // David
print(user2.name) // David


// Inheritance
// Inheritance allows one class to acquire properties and methods another class
// Subclass can have properties and methods of its parent class

class Animal {
    func makeSound() {
        print("Makes Sound")
    }
}

class Dog: Animal {
func bark() {
        print("Bark")
    }
}
let dog = Dog()
dog.bark()
dog.makeSound()

// Here, Dog inherits the makeSound() method from Animal.

// Method overriding
// - Method overriding allows a subclass to provide it's implementation of method inherited from parent class

class Animal {
    func sound() {
        print("Animal makes a sound")
    }
}

class Dog: Animal {
    override func sound() {
        print("Dog barks")
    }
}

let dog = Dog()
dog.sound()

// Here, Dog overrides the sound() method of Animal.
//
// Remember:
// - Inheritance: Reuse properties and methods from a parent class.
// - Overriding: Change the inherited method's implementation in a child class.



// final Keyword
// final Keyword prevents class and methods from inheritance and overriding
final class Vehicle {
    func start() {
        print("Starting vehicle")
    }
}
// ERROR
//class Car: Vehicle { // ERROR
//    override func start() {
//        print("Starting car")
//    }
//}

class Vehicle {
    final func start() {
        print("Starting vehicle")
    }
}
// Cant override this function


// Deinitializer
// Deinit method called automatically wheneven class instance is deallocated
class User {
    var name = "John"
    deinit {
    
        
    }
}

var user: User? = User()

user = nil


// Identity Comparison (===)
// Classes support identity comparison using === and !==.
//
// These operators check whether two references point to the exact same class instance.
class User {
    var name = "John"
}

let user1 = User()
let user2 = user1
let user3 = User()

print(user1 === user2) // true
print(user1 === user3) // false


//- ===: Both references point to the same instance.
//- !==: References point to different instances.
//This differs from ==, which checks value equality when the type implements Equatable.


//ARC and Classes
//ARC stands for Automatic Reference Counting.
//
//Swift uses ARC to manage the memory of class instances.
//
//ARC keeps track of strong references to an object.
//
//When an object's strong reference count reaches zero, the object can be deallocated, provided there are no other ownership mechanisms keeping it alive.
//
//Example:
class User {
    var name = "John"

    deinit {
        print("User deallocated")
    }
}

var user1: User? = User() // One strong reference

var user2 = user1         // Another strong reference

user1 = nil               // One reference remains

user2 = nil               // No strong references remain

//
//Output:
//User deallocated


// Important points about Classes
// 1. Classes are reference types.
// 2. Classes are declared using the class keyword.
// 3. Classes can contain stored and computed properties.
// 4. Classes support property observers.
// 5. Classes can contain instance methods and static methods.
// 6. Classes use initializers to initialize instances.
// 7. self refers to the current instance.
// 8. Classes support inheritance.
// 9. Subclasses can override inherited methods using override.
// 10. final prevents inheritance or overriding.
// 11. Classes support deinitializers using deinit.
// 12. Classes support identity comparison using === and !==.
// 13. ARC manages the lifetime of class instances.
// 14. Assigning a class instance copies its reference,
//     not the actual object.
