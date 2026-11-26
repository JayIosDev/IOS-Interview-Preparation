import Playgrounds

#Playground {
    
    // What is Function?
    // A Function is a reusable block of code that perform a specific task, And we can reuse same code by calling same func any times
    
    // Instead of writing the same code multiple times, we can define a function once and call it whenever needed.
    
    func greetUser() {
        print("Hello, Welcome to Swift!")
    }
    
    // Function call
    greetUser()
    
    
    // Function WithOut Parameters
    // A Function can perform a task without accepting parameters and no return
    func getMyName() {
        print("My name is Jayaram")
    }
    
    
    // Function with Parameters
    // A Function can perform task by accepting parameters
    func greetUser(name: String) {
        print("Hello, \(name)")
    }
    
    greetUser(name: "Jay")
    //    name is the parameter.
    //    String is its data type.
    //    "Jay" is the argument passed during the function call.
    
    // Function with Return Values
    func greetUser(name: String) -> String {
        return "Hello, \(name)"
    }
    
    print(greetUser(name: "Jay"))
    
    
    // Function with no parameters and with return value
    func greetUser() -> String {
        return "Hello, Welcome to Swift!"
    }
    
    // Function Argument Labels
    func greetUser(first name: String, lastName: String) {
        print("Hello, \(firstName) \(lastName)")
    }
    greetUser(first: "Jay",lastName: "Ram")
    
    
    // Ommiting Argument Labels
    func greetUser(_ name: String) {
        print("Name is \(name)")
    }
    greetUser("Jay")
    
    
    // Default Parameters
    func sumOf(a: Int = 10, b: Int = 10, c: Int = 0) -> Int {
        return a + b + c
    }
    sumOf() // 20
    sumOf(a: 20,b: 20, c: 10) // 50
    
    
    // Functions With Multiple Return values
    func getUserInfo() -> (String, String, Int) {
        return ("Jay", "Jayaram", 22)
    }
    getUserInfo()
    
    
    // Important points about Functions
    // 1. A function is a reusable block of code that performs a specific task.
    // 2. The func keyword is used to declare a function.
    // 3. A function can accept zero or more parameters.
    // 4. Parameters define the inputs accepted by a function.
    // 5. Arguments are the actual values passed during a function call.
    // 6. The arrow (->) is used to specify the return type.
    // 7. The return keyword sends a value back to the caller.
    // 8. A function can have parameters without returning a value.
    // 9. A function can return a value without accepting parameters.
    // 10. Swift supports external argument labels and internal parameter names.
    // 11. The underscore (_) can be used to omit an argument label.
    // 12. Default parameter values allow arguments to be omitted.
    // 13. Functions can return multiple values using tuples.
    // 14. Functions improve code reusability, readability, and maintainability.
    
    
    
    
    
    //  Function Overloading
    
    //  What is Function Overloading?
    //  Function overloading means creating multiple functions with the same name but different parameter lists.
    
    //    The parameter lists can differ by:
    //    1. Number of parameters.
    //    2. Parameter data types.
    //    3. Parameter order.
    //    4. Argument labels.
    
    //    Function Overloading by Number of Parameters
    //    We can create multiple functions with the same name but different numbers of parameters.
    
    func add(a: Int, b: Int) {
        print(a + b)
    }
    
    func add(a: Int, b: Int, c: Int) {
        print(a + b + c)
    }
    
    // Function calls
    add(a: 10, b: 20)
    add(a: 10, b: 20, c: 30)
    
    
    
    //    Function Overloading by Data Types
    //    We can use the same function name with different parameter data types.
    func displayValue(value: Int) {
        print("Integer: \(value)")
    }
    
    func displayValue(value: String) {
        print("String: \(value)")
    }
    
    // Function calls
    displayValue(value: 100)
    displayValue(value: "Swift")
    
    
    
    //    Function Overloading by Parameter Order
    //    We can overload functions by changing the order of parameter types.
    func displayDetails(name: String, age: Int) {
        print("Name: \(name), Age: \(age)")
    }
    
    func displayDetails(age: Int, name: String) {
        print("Age: \(age), Name: \(name)")
    }
    
    // Function calls
    displayDetails(name: "Jay", age: 30)
    displayDetails(age: 30, name: "Jay")
    
    
    // Both functions have the same name, but their parameter order is different.
    
    //    Function Overloading by Argument Labels
    //    Argument labels are also part of a function's signature in Swift.
    
    func greetUser(name: String) {
        print("Hello \(name)")
    }
    
    func greetUser(to name: String) {
        print("Welcome \(name)")
    }
    
    // Function calls
    greetUser(name: "Jay")
    greetUser(to: "Jay")
    
    //Notice that both functions have the same internal parameter name and type, but different external argument labels.
    
    
    //    Can We Overload Functions Only by Changing the Return Type?
    //    This is an important interview question.
    //
    //    Consider:
    func getValue() -> Int {
        return 10
    }
    
    func getValue() -> String {
        return "Swift"
    }
    
    //    Swift can distinguish these overloads when the expected return type provides enough context:
    let number: Int = getValue()
    let text: String = getValue()
    
    //    However, this can become ambiguous:
    getValue()
    
    //    The compiler cannot determine which overload you intend without additional context.
    //
    //    Interview takeaway: Swift can support overloads that differ only in return type, but the call must provide enough type context to resolve the correct overload.
    
    
    
    //    Function Overloading vs Function Overriding
    //    These are different concepts and commonly asked together in interviews.
    
    //    Function Overloading                                                          Function Overriding
    ------------------------------------------------------------------------------------------------------------------------------------------
    //    Same function name with different parameter lists                     Subclass provides a new implementation of an inherited method
    //    Usually occurs within the same type                                               Requires inheritance
    //    Compile-time polymorphism                                         Runtime polymorphism through dynamic dispatch in typical class-method cases
    //    Does not require override                                                         Uses override keyword
    
    
    //    Example of overriding:
    class Animal {
        func makeSound() {
            print("Animal sound")
        }
    }
    
    class Dog: Animal {
        override func makeSound() {
            print("Bark")
        }
    }
    
    let dog = Dog()
    dog.makeSound()
    
    
    
    // Important points about Function Overloading
    // 1. Function overloading allows multiple functions to have the same name.
    // 2. Overloaded functions must have distinguishable function signatures.
    // 3. Functions can be overloaded by changing the number of parameters.
    // 4. Functions can be overloaded by changing parameter data types.
    // 5. Functions can be overloaded by changing parameter order.
    // 6. Functions can be overloaded by changing argument labels.
    // 7. Swift selects the appropriate overload based on the arguments and available type context.
    // 8. Functions can also be overloaded by return type when the call provides enough type information.
    // 9. Function overloading is associated with compile-time polymorphism.
    // 10. Function overloading and function overriding are different concepts.
    
    
    
    
    // inout Parameters
    // This is an important interview concept because it explains how a function can modify a variable that belongs to the caller
    
    // By default swift function parameters are constant, we can't modify their values inside function
    // With inout parameter we can modify the original value passed by compiler
    
    
    func increment(number: inout Int) {
        number += 1
    }
    
    var age = 30
    
    increment(number: &age)
    
    print(age) // 31
    
    //    Why do we use inout?
    
    //    Imagine you want to increase a user's account balance.
    //
    //    Without inout, you would return the updated value and assign it back.
    
    func updateBalance(balance: Int) -> Int {
        return balance + 500
    }
    
    var accountBalance = 1000
    
    accountBalance = updateBalance(balance: accountBalance)
    
    print(accountBalance)
    
    // Important points about inout Parameters
    // 1. The inout keyword allows a function to modify the caller's variable.
    // 2. Function parameters are constants by default.
    // 3. The inout keyword is used in the function declaration.
    // 4. The ampersand (&) symbol is used when passing an argument.
    // 5. We must pass a variable to an inout parameter.
    // 6. We cannot pass a constant or literal directly to an inout parameter.
    // 7. Changes made to an inout parameter are reflected in the caller's variable.
    // 8. Swift describes inout using copy-in/copy-out semantics.
    // 9. Modern Swift may optimize inout access without making a physical copy.
    // 10. Multiple inout parameters can be used in a function.
    // 11. An inout parameter cannot have a default value.
    // 12. An inout parameter cannot be variadic.
    // 13. Swift enforces exclusive access to memory for inout arguments.
    
    
    
    // Variadic Parameters
    // A variadic parameter allows a function to accept zero or more values of same type
    // In Swift, we use three dots (...) after the parameter's type to declare a variadic parameter.
    //    Example 1: Basic variadic parameter
    func calculateTotal(numbers: Int...) {
        print(numbers)
    }
    
    calculateTotal(numbers: 10, 20, 30)
    
    //    Why do we use Variadic Parameters?
    //    Suppose you want to calculate the sum of different numbers.
    //
    //    Without variadic parameters:
    func calculateTotal(a: Int, b: Int) -> Int {
        return a + b
    }
    
    print(calculateTotal(a: 10, b: 20))
    
    
    //    This function accepts only two numbers.
    //
    //    What if you want to pass 5 or 10 numbers?
    //
    //    You would need to change the function or create another overload.
    //
    //    With variadic parameters:
    func calculateTotal(numbers: Int...) -> Int {
        var total = 0
        
        for number in numbers {
            total += number
        }
        
        return total
    }
    
    print(calculateTotal(numbers: 10, 20))
    print(calculateTotal(numbers: 10, 20, 30))
    print(calculateTotal(numbers: 10, 20, 30, 40, 50))
    
    
    //    Output:
    //    30
    //    60
    //    150
    
    
    //  One function can handle different numbers of arguments.
    
    // Important points about Variadic Parameters
    // 1. Variadic parameters allow a function to accept zero or more values.
    // 2. Use three dots (...) after the parameter type.
    // 3. All passed values must match the parameter's declared type.
    // 4. Inside the function, a variadic parameter behaves like an array.
    // 5. A function can have only one variadic parameter.
    // 6. Variadic parameters can be combined with normal parameters.
    // 7. Variadic parameters cannot have default values.
    // 8. We can use loops and array operations on variadic parameters.
    // 9. Variadic parameters are useful when the number of arguments is unknown.
    // 10. Variadic parameters and array parameters have different calling syntax.
}
