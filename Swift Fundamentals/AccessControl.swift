

// Access Control

// Access Control controls where properties , methods , classes , structs can be accessed

// Swift Provides five Access Controls:
// Open
// Public
// private
// internal
// fileprivate


// What is Access Control?
// Access control restricts access code from other parts of your application or module

// For Example
// Hide internal implement details
// Allow access within class
// Allow access to other frameworks etc
// share functionality within same module


// 1. private

// Accessible with in scope

// Example:

struct User {
    private var name: String = "Jay"
    
    func getName() {
        print(name)
    }
}

// Here we can access with struct User , we can access it outside anywhere



// 2. fileprivate

// Accessible anywhere inside file

fileprivate var userName = "jayram"

struct User2 {
    func getUserName() {
        print(userName)
    }
}
// Here, userName can be accessed from another declaration in the same file.


// 3. internal
// Accessible anywhere within same module

// By default all have internal access

internal class User3 {
    var name: String
}

// Other files in the same module can access it


// 4. public

// Accessible to outside the modules but cannot override or inherit outside
public class Vehicle {
    public func start() {
        print("Vehicle started")
    }
}

// Example: A framework can expose a public API for other applications to use.



// 5.open

// Accessible and overridable outside the module
open class Animal {
    open func makeSound() {
        print("Animal sound")
    }
}

// A developer using this class from another module can subclass it and override makeSound().

// Real-world iOS Example

class BankAccount {

    private var balance = 10000

    func deposit(amount: Int) {
        balance += amount
    }

    func getBalance() -> Int {
        return balance
    }
}
//Here:
//- balance is private, so outside code cannot modify it directly.
//- deposit() provides a controlled way to update the balance.
//- getBalance() provides a way to read the balance.



// Important points about Access Control
// 1. Access Control restricts access to declarations.
// 2. Swift provides five access levels.
// 3. private provides access within the enclosing declaration
//    and its same-file extensions.
// 4. fileprivate provides access throughout the same source file.
// 5. internal provides access throughout the same module.
// 6. internal is the default access level in Swift
// 7. public provides access outside the defining module.
// 8. open allows classes to be subclassed outside the defining module.
// 9. open methods can be overridden outside the defining module.
// 10. public methods cannot be overridden outside the defining module.
// 11. Access Control helps hide implementation details.
// 12. Use private to protect internal state.
