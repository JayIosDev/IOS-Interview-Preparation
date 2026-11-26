import Playgrounds

#Playground {
    
    // CLOSURES
    
    // What is Closure?
    // Closures are self contained block of code , that can be passed around and execute later
    
    // Its like Function without name
    
    //    Normal function
    //    func greet() {
    //        print("Hello Swift")
    //    }
    //
    //    greet()
    
    
    //    Closure
    //    let greeting = {
    //        print("Hello Swift")
    //    }
    //
    //    greeting()
    
    
    // The main difference is that the normal function has a name, whereas this closure is assigned to a variable.
    
    
    // Closures with Parameters
    // Closures can accept parameters just like normal functions.
    let greetName = { (name: String) in
        print(name)
    }
    
    greetName("Jay")
    
    //    Closures with Return Values
    //    Closures can also return values.
    let square = { (number: Int) -> Int in
        return number * number
    }
    
    let result = square(5)
    
    print(result)
    
    //    Closures as Function Parameters
    //    Closures can be passed directly to another function.
    func operation(operation: ()->Void) {
        operation()
    }
    
    operation {
        print("Hello")
    }
    
    // Important points about Closures
    // 1. A closure is a self-contained block of code.
    // 2. Closures can be assigned to variables and constants.
    // 3. Closures can accept parameters.
    // 4. Closures can return values.
    // 5. Closures can be passed as function parameters.
    // 6. Closures can be returned from functions.
    // 7. Closures can capture and store references to variables
    //    and constants from their surrounding context.
    // 8. Closures are widely used in SwiftUI and UIKit.
    // 9. Trailing closure syntax makes closure calls cleaner.
    // 10. Closures are commonly used for callbacks and completion handlers.
    
    
    
    
    
    // **********************************************************************************************
    
    // Escaping and Non-Escaping Closures
    
    // What is Non-Escaping Closure?
    // By default closure passed in function parameters are non escaping closure
    // A non escapiong closure means closure should excute before function returns
    
    func doSomething(closure: (() -> Void)?) {
        print("Started")
        
        closure()
        
        print("Completed")
    }
    
    doSomething {
        print("Running")
    }
    
    // Started, Running, Completed
    
    // Escaping Closure
    // A Closure can execute after function returns is called Escaping Closure,
    func escapingClosure(completion: @escaping(String)-> Void) {
        print("Started")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion()
        }
        
        print("Running")
        
    }
    
    escapingClosure {
        print("Finished After 1 sec")
    }
    
    //    Why do we use @escaping in iOS?
    //    Imagine you are calling an API to fetch user details.
    //
    //    The API takes time to respond. Your function may return before the API response arrives.
    //
    //    You need a closure to receive the result later.
    
    
    // Important points about Escaping and Non-Escaping Closures
    // 1. Closures passed as function parameters are non-escaping by default.
    // 2. A non-escaping closure must not outlive the function call
    // 3. An escaping closure can execute after the receiving function returns.
    // 4. We use the @escaping keyword to allow a closure to escape
    // 5. Escaping closures are commonly used in asynchronous operations.
    // 6. API calls and network requests commonly use escaping closures.
    // 7. An escaping closure can be stored for later execution.
    // 8. Escaping closures may capture self and create retain cycles
    //    if memory management is not handled properly.
    // 9. Non-escaping closures do not require the @escaping keyword.
    
    
    // Capture Lists and Memory Management in Closures
    // What is Capture list?
    // Capture list tells you how closure capture values from surrounding context
    
    // We write a capture list inside square brackets [] before the closure's parameters.
    //    var name = "John"
    //
    //    let greeting = { [name] in
    //        print("Hello \(name)")
    //    }
    //
    //    name = "David"
    //
    //    greeting()
    
    // What is [Weak self]?
    // Weak self tells a closure not to retain objects strongly which are referenced by self
    // It is commonly used in escaping closures to prevent retain cycles.
    class ViewController {
        
        func fetchData() {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
                
                self?.updateUI()
                
            }
        }
        
        func updateUI() {
            print("UI Updated")
        }
    }
    
    // What is [unowned self]?
    // unowned self also prevents closure from strongly retaining self
    // How ever like weak self unowned is not optional
    // use it when you can guarantee object will still exist when ever closure accesses it.Accessint it after deallocation make application runtime crash
    class ViewController {
        
        func performTask() {
            
            let completion = { [unowned self] in
                self.updateUI()
            }
            
            completion()
        }
        
        func updateUI() {
            print("UI Updated")
        }
    }
    //    Here, we use self directly without optional chaining.
    //
    //    Important: Only use unowned when you can guarantee that the referenced object will still exist whenever the closure accesses it. Otherwise, accessing it after deallocation causes a runtime crash.
    
    
    // What is Retain Cycle?
    // When two or more objecting strongly reference each others retain cycle happens , preventing them from being deallocation
    class Person {
        
        var name = "John"
        
        var greeting: (() -> Void)?
        
        func sayHello() {
            
            greeting = {
                print("Hello \(self.name)")
            }
        }
    }
    
    // Here:
    // 1. Person strongly retains its greeting closure.
    // 2. The closure strongly captures self.
    // 3. self strongly retains the closure.
    // 4. Both references keep each other alive.
    
//    How to fix it?
//    Use [weak self] when appropriate.
    
    class Person {

        var name = "John"

        var greeting: (() -> Void)?

        func sayHello() {

            greeting = { [weak self] in
                guard let self else { return }

                print("Hello \(self.name)")
            }
        }
    }
    
    // Important points about Capture Lists and Memory Management
    // 1. Capture lists define how closures capture values.
    // 2. Capture lists are written inside square brackets [].
    // 3. Closures can capture values from their surrounding scope.
    // 4. [weak self] prevents strong retention of self.
    // 5. Weak references automatically become nil when the object is deallocated.
    // 6. [unowned self] does not retain the object.
    // 7. Unowned references are non-optional.
    // 8. Accessing a deallocated unowned reference causes a runtime crash.
    // 9. Strong reference cycles can cause memory leaks.
    // 10. Use weak or unowned references when appropriate to prevent retain cycles.
    // 11. ARC stands for Automatic Reference Counting.
    // 12. ARC manages the lifetime of class instances using reference counts.
    
    
}

