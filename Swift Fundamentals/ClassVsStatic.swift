//
//// Class vs Static
//Both static and class are used to define properties and methods that belong to the type itself rather than individual instances.
//
//Let's understand them step by step.
//1. What is static in Swift?
//The static keyword defines properties and methods that belong to the type itself, not to individual instances.
//
//Example:
//struct User {
//    static var appName = "MyApp"
//
//    static func showAppName() {
//        print(appName)
//    }
//}
//
//// Access using the type name
//print(User.appName)
//
//User.showAppName()
//
//
//Output:
//MyApp
//MyApp
//
//
//Notice:
//- We access appName using User.appName.
//- We don't need to create a User instance.
//- showAppName() is also called using the type name.
//2. What are Type Properties and Type Methods?
//Swift provides two categories:
//Category    Meaning
//Instance Property    Belongs to an individual instance
//Type Property    Belongs to the type itself
//Instance Method    Belongs to an individual instance
//Type Method    Belongs to the type itself
//
//Example:
//struct Counter {
//    var count = 0
//
//    static var totalCounters = 0
//
//    func increment() {
//        count += 1
//    }
//
//    static func showTotal() {
//        print(totalCounters)
//    }
//}
//
//var counter = Counter()
//
//counter.increment()
//
//Counter.totalCounters = 5
//Counter.showTotal()
//
//
//Here:
//- count is an instance property.
//- totalCounters is a type property.
//- increment() is an instance method.
//- showTotal() is a type method.
//3. What is class in Swift?
//In addition to defining type methods, the class keyword can be used to define overridable type methods and computed type properties in classes.
//
//Example:
//class Animal {
//    class func makeSound() {
//        print("Animal sound")
//    }
//}
//
//class Dog: Animal {
//    override class func makeSound() {
//        print("Dog barks")
//    }
//}
//
//Animal.makeSound()
//Dog.makeSound()
//
//
//Output:
//Animal sound
//Dog barks
//
//
//Here:
//- class func defines a type method.
//- Subclasses can override it.
//- override is used to provide a new implementation.
//4. Difference between static and class
//This is the most important interview point.
//Feature    static    class
//Defines type methods    Yes    Yes
//Defines type properties    Yes    Yes, computed only
//Can be overridden    No    Yes
//Used with structs    Yes    No
//Used with enums    Yes    No
//Used with classes    Yes    Yes
//
//Important: static methods and properties cannot be overridden. class methods and computed properties can be overridden in subclasses.
//
//For classes, static is effectively a non-overridable type member.
//5. Can we use static with Structs and Enums?
//Yes!
//struct Calculator {
//    static func add(a: Int, b: Int) -> Int {
//        return a + b
//    }
//}
//
//enum Direction {
//    case north, south, east, west
//
//    static var defaultDirection: Direction {
//        return .north
//    }
//}
//
//print(Calculator.add(a: 10, b: 20))
//print(Direction.defaultDirection)
//
//
//Output:
//30
//north
//
//
//6. Real-world iOS usage
//You will commonly see static in iOS development.
//
//Example:
//struct AppConfig {
//    static let baseURL = "https://example.com"
//
//    static let appVersion = "1.0"
//}
//
//
//Access anywhere using:
//print(AppConfig.baseURL)
//print(AppConfig.appVersion)
//
//
//Other common examples:
//- Constants shared across the application.
//- Utility methods.
//- Configuration values.
//- Shared type-level functionality.
//7. Important points about static and class
//// Important points about Static and Class
//
//// 1. static defines properties and methods that belong to the type.
//
//// 2. Type properties and methods can be accessed using the type name.
//
//// 3. static can be used with Structs, Classes, and Enums.
//
//// 4. class is used for overridable type methods in Classes.
//
//// 5. static members cannot be overridden.
//
//// 6. class methods can be overridden by subclasses.
//
//// 7. static stored properties are lazily initialized.
//
//// 8. class stored type properties are not supported.
//
//// 9. Type properties are useful for shared configuration and constants.
//
//// 10. Instance properties belong to individual instances.
