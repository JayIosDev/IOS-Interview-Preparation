import Playgrounds

#Playground {

    
    // What is Variable ?
    // Ans: A Variable is named storage location whose value can change after it's initialization / Can change during program execution
    var name: String = "Jay"
    print(name)
    name = "Ram" // Value Changed
    print(name) // Output Ram
    
    // What is Let?
    // Ans: Let is a storage location whose value cannot change or reassign after initialization
    let age:Int = 30
    age = 20 // Compile time error
    
    // Once initialized we cannot assign another value
    
    
    // Important Interview Points
    //    1. var allows to change the value
    //    2. let does not allows to change the value
    //    3. var is mutable
    //    4. let is immutable
    //    5. Swift recommends use 'Let' whenever possible
    //    6. A Constant must be initialized before it is used
    //    7. A Let can be initialized later. but only once
    //    8. A Let with class still allow modifications of its mutable properties
    
    
    // Qs And Ans
    //    1. What is the difference between Let and Var?
    //    Ans. Let is a storage location whose value cant change after its initialized and its immutable
    //         Var is a storage location whose value can change after its initialized and its mutable
    
    //    2. Why does Swift recommend using let whenever possible?
    //    Ans. Swift recommends using let whenever possible because it prevents accidental reassignment, improves code safety,         makes code easier to understand and reason about, and communicates that a value should remain unchanged.
    
    //    3. Can we change the value of a let constant?
    //    Ans. No. Once a constant is initialized using let, we cannot reassign another value to it. Swift produces a             compile-time error if we attempt to do so.
    
    //    4. Can we declare a variable without initializing it
    //    Ans. Yes. We can declare a variable without initializing it, but we must explicitly specify its data type. We must           initialize it before accessing its value.
    
    //    5. Can we modify a class object's properties when its reference is declared using let?
    //    Ans. Yes. When a class instance is assigned to a let constant, the reference cannot be reassigned, but we can modify its mutable properties declared using var.
}
