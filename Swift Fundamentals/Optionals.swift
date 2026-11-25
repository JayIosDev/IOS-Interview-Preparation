import Playgrounds

#Playground {
    var name:String? = nil
    
    
    //    What are Optionals in Swift?
    //    An Optional is a special type in Swift that can store either:
    //    1. A value.
    //    2. nil (no value).
    //    In simple words, an Optional tells Swift that a variable may or may not contain a value.
    
    var name: String = "Jay"
    var age: Int? = 30
    var address: String? = nil
    
    
    // Why do we need Optionals?
    //    Imagine fetching a user's phone number from an API.
    //    var phoneNumber: String? = nil
    //
    //
    //    The API might return:
    //    - A phone number if available.
    //    - Nil if the phone number is missing.
    //    Optionals help us safely handle these situations.
    
    
    // How do Optionals work internally?
    // Swift represents an Optional using an enumeration conceptually similar to this:
    //    enum Optional<Wrapped> {
    //        case none
    //        case some(Wrapped)
    //    }
    
    
    // Important points about Optionals
    // 1. Optionals are used when a value may or may not exist.
    // 2. An Optional can store either a value or nil.
    // 3. The question mark (?) is used to declare an Optional.
    // 4. Optional types can be created with any data type,
    //    such as Int?, String?, Double?, and Bool?.
    // 5. A normal variable cannot store nil
    // 6. An Optional must be safely unwrapped before accessing
    //    its underlying value.
    // 7. Swift uses Optionals to prevent unexpected nil-related
    //    runtime errors.
    // 8. Optionals are represented internally using some and none.
    // 9. nil represents the absence of a value.
    // 10. Optionals are commonly used when working with APIs,
    //     JSON parsing, databases, and user input.
    
    
    
    
    
    
    
    /// Optional Binding
    // What is Optional Binding?
    // Optional Binding is technique used to safely unwrap optional value and access its actual value
    //    When an Optional contains a value, Optional Binding allows us to extract that value and use it safely.
    
    
    var userAge: Int? = 30
    
    if let age = userAge {
        print(age)
    } else {
        print("Age is not available")
    }
    
    struct User {
        let name: String
        let phoneNumber: String?
    }
    
    let user = User(
        name: "Jay",
        phoneNumber: "9876543210"
    )
    
    if let phone = user.phoneNumber {
        print("User phone: \(phone)")
    } else {
        print("Phone number not available")
    }
    
    // Important points about Optional Binding
    // 1. Optional Binding is used to safely unwrap Optional values.
    // 2. It checks whether an Optional contains a value or nil.
    // 3. We commonly use if let and guard let for Optional Binding.
    // 4. If the Optional contains a value, the value is unwrapped.
    // 5. If the Optional contains nil, the unwrapping condition fails.
    // 6. The unwrapped value becomes a non-Optional value.
    // 7. We can unwrap multiple Optionals in a single if let statement.
    // 8. Optional Binding helps avoid force unwrapping.
    // 9. It is commonly used when handling API responses,
    //    JSON data and Optional properties.
    // 10. Optional Binding improves code safety and readability.
    
    
    
    
    /// if let vs guard let
    // Both if let and guard let are used for Optional Binding in Swift. They safely unwrap Optional values and allow us to access the actual value without force unwrapping.
    
    // However, their main difference is scope and control flow.
    
    // What is if let in Swift?
    // If let is used to safely unwrap optional values and excute block of code when optional contains non nil value
    
    // A variable declared using if let is accessible inside the if block, but not outside it.
    
    
    var userName: String? = "Jay"
    
    if let name = userName {
        print("Welcome, \(name)")
    } else {
        print("Username is not available")
    }
    
    
    //    What is guard let in Swift?
    //    guard let is another way to safely unwrap an Optional.
    //    It Checks whether optional contains nil value, if the value is nil it execute else part and exit from the current scope
    
    var userName: String? = "Jay"
    
    func displayUserName() {
        
        guard let name = userName else {
            print("Username is not available")
            return
        }
        
        print("Welcome, \(name)")
    }
    
    displayUserName()
    
    
    // Scope difference between if let and guard let
    // This is one of the most important interview concepts.
    
    //    Let's compare both.
    //    if let – Limited scope
    //    INSIDE IF BLOCK
    if let name = userName {
        print(name) // Works
    }
    
    // Accessible
    
    // OUTSIDE IF BLOCK
    // print(name) // Error
    // Not accessible
    
    
    //    guard let – Extended scope
    //    AFTER GUARD STATEMENT
    guard let name = userName else {
        return
    }
    print(name) // Works
    
    // Accessible
    
    
    //    Why does this happen?
    //    - if let creates a constant available within the successful if branch.
    //    - guard let creates a constant available after the guard statement in the enclosing scope, because execution can continue only when unwrapping succeeds.
    
    
    
    // Important points about if let and guard let
    // 1. Both are used for safely unwrapping Optional values.
    // 2. Both check whether an Optional contains a non-nil value.
    // 3. if let executes its block when the Optional contains a value.
    // 4. The variable declared using if let is accessible
    //    within the successful if branch.
    // 5. guard let executes its else block when the Optional is nil.
    // 6. The else block of guard must exit the enclosing scope.
    // 7. The variable declared using guard let is accessible
    //    after the guard statement in the enclosing scope.
    // 8. if let is useful for conditional execution.
    // 9. guard let is useful for early exits and validation.
    // 10. Both improve code safety and readability.
    // 11. Both help avoid force unwrapping (!).
    
    
    
    
    ///Mark:-  Force Unwrapping
    // Force Wrapping is a way to extract actual value from optional value by using (!)
    
    //    It tells Swift:
    //    "I am sure this Optional contains a value. Give me the value directly."
    
    //    What happens if the Optional contains nil?
    //    This is where force unwrapping becomes dangerous.
    
    var userName: String? = nil
    
    let name = userName!
    print(name)
    
    //    Runtime crash
    //    Swift crashes at runtime because you're trying to force unwrap nil.
    //
    //    Important: Force unwrapping does not safely check whether a value exists. It assumes the value is present.
    
    
    //    Force Unwrapping                  Optional Binding
    //    ---------------------------------------------------
    //    Uses !                          Uses if let or guard let
    //    Assumes value exists            Checks whether value exists
    //    Crashes if value is nil             Safely handles nil
    //    Riskier                             Generally safer
    
    // Important points about Force Unwrapping
    // 1. Force unwrapping extracts the actual value from an Optional.
    // 2. It uses the exclamation mark (!).
    // 3. It converts an Optional value into a non-Optional value.
    // 4. It assumes that the Optional contains a non-nil value.
    // 5. Force unwrapping a nil value causes a runtime crash.
    // 6. The compiler does not guarantee that the Optional contains a value.
    // 7. It should be used only when we are certain that the value is not nil.
    // 8. Optional Binding (if let / guard let) is generally safer.
    // 9. Force unwrapping is different from Implicitly Unwrapped Optionals (IUO).
    
    
    
    
    
    /// MARK:- What is an Implicitly Unwrapped Optional?
    // Implicitly Unwrapped Optional is a optional it may contain value or may be nil , but swift allows you to access it with out explicitly unwrapping it in many contexts
    // We declare an IUO using an exclamation mark (!) after the type.
    
    // Syntax:
    var variableName: DataType!
    
    var userName: String! = "Jay"
    
    print(userName)
    
    // Why do we need IUO?
    // Some times, we know that an optional will have value before we access it but we cannot provide that value immediately when declaring it
    
    //    For example, consider a UIKit view controller:
    //    class ProfileViewController: UIViewController {
    //
    //        @IBOutlet weak var nameLabel: UILabel!
    //
    //        override func viewDidLoad() {
    //            super.viewDidLoad()
    //
    //            nameLabel.text = "Jay"
    //        }
    //    }

    //    Here, nameLabel is connected to a storyboard element when the view controller is loaded.
    
    //    The label is declared before the storyboard connection is established. IUO allows convenient access to it after the connection is available.
    
    //    Important: If the outlet is not connected and you access it, your app can crash.
    
    
    // Important points about Implicitly Unwrapped Optionals
    // 1. IUO stands for Implicitly Unwrapped Optional.
    // 2. It is declared using an exclamation mark (!) after the data type.
    // 3. Example: var name: String!
    // 4. It can contain either a value or nil.
    // 5. Swift implicitly unwraps it when a non-Optional value is required.
    // 6. Accessing an IUO containing nil in a context that requires unwrapping causes a runtime crash.
    // 7. IUO is still an Optional type.
    // 8. It is commonly used for IBOutlet properties in UIKit.
    // 9. Use IUO only when you can guarantee the value will be initialized before accessing it.
    // 10. Prefer regular Optionals when safe unwrapping is practical.
}
