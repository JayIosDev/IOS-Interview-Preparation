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
    
}
