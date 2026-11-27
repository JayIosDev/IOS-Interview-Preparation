
// Extensions

// What is Extension?

// Extension means adding new functionality to existing type without modifying it original Source code

// We can use Extensions for Classes , structs ,protocols , enums , built in data types Int , string etc

// Extensions are commonly used in  ios development to organize code and reuse code

// Let's say we have a structure called Person.

struct Person {
    var name: String
}

// Now, suppose we want to add a method called sayHello().

// We can add it using an extension:
extension Person {
    func sayHello() {
        print("Hello, \(name)")
    }
}
let person = Person(name: "John")
person.sayHello()


// Output:
// Hello, John

// Important: We added a new method without changing the original Person structure.

// Adding Computed Properties
// We can add computed properties using extensions.
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
print(10.isEven) // true
print(7.isEven)  // false


// Adding Methods
// We can add instance methods and type methods.
extension String {
    func greet() -> String {
        return "Hello, \(self)"
    }

    static func appName() -> String {
        return "MyApp"
    }
}

print("John".greet())
print(String.appName())


// Output:
// Hello, John
// MyApp


// Adding Initializers
// We can add initializers through extensions.
struct User {
    var name: String
    var age: Int
}

extension User {
    init(name: String) {
        self.name = name
        self.age = 25
    }
}

let user = User(name: "John")

print(user.name) // John
print(user.age)  // 25


//Important interview point:
// - Extensions can add convenience initializers to classes.
// - Extensions can add initializers to value types.
// - Extensions cannot add designated initializers to classes.
// Also, an initializer added in a same-file extension does not suppress a structure's automatically generated memberwise initializer.



// Extensions with Protocols
// Extensions are frequently used to organize protocol conformance.
protocol Greetable {
    func greet()
}

struct User {
    var name: String
}

extension User: Greetable {
    func greet() {
        print("Hello, \(name)")
    }
}

let user = User(name: "John")
user.greet()



// Limitations of Extensions
// This is important for interviews.

//                    Extensions can                                                        Extensions cannot
//----------------------------------------------------------------------------------------------------------------------------------------------------
//                Add computed properties                                                 Add stored properties
//                Add instance methods                                                    Add designated initializers to classes
//                Add type methods                                                        Override existing methods
//                Add initializers (with restrictions)                                    Add deinitializers
//                Add protocol conformance                                                Add new stored properties


// Important points about Extensions
// 1. Extensions add functionality to existing types.
// 2. Extensions can be used with Structs, Classes, and Enums.
// 3. Extensions can add computed properties.
// 4. Extensions cannot add stored properties.
// 5. Extensions can add instance methods.
// 6. Extensions can add type methods using static.
// 7. Extensions can add initializers with certain restrictions.
// 8. Extensions can add protocol conformance.
// 9. Extensions cannot override existing methods.
// 10. Extensions help organize and reuse code.
// 11. Extensions are commonly used with String, Int, Date, and UIViewController.
// 12. Extensions cannot add deinitializers.
