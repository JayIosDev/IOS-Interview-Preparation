import Playgrounds

#Playground {
    
    // What is DataType?
    // A DataType defines the kind of value a variable or constant can store and the operations that can be performed on that value
    
    // In Swift , Every variable and constant has a specific datatype
    let employeeName = "John"
    let employeeAge = 30
    let salary = 50000.50
    let isEmployed = true
    
    //    Variable          Value       Data type
    
    //    employeeName      "John"        String
    //    employeeAge         30           Int
    //    salary            50000.50      Double
    //    isEmployed          true         Bool
    
    
    // MAIN DATATYPES IN SWIFT
    //    Basic Data Types
    //    Int
    //    Float
    //    Double
    //    String
    //    Character
    //    Bool
    
    //    Collection Types
    //    - Array
    //    - Dictionary
    //    - Set
    
    
    //    Other Important Types
    //    - Tuple
    //    - Optional
    //    - Enum
    //    - Struct
    //    - Class
    
    
    //    Important points about Int
    //    1. Stores positive and negative whole numbers.
    //    2. Does not store decimal values.
    //    3. On modern 64-bit iOS devices, Int is a 64-bit signed integer.
    //    4. Swift also provides Int8, Int16, Int32, and Int64.
    //    5. Integer overflow is checked during normal arithmetic operations and can cause a runtime trap.
    
    // Important points about Double
    // 1. Stores decimal (floating-point) numbers.
    // 2. Double uses 64 bits (8 bytes) of memory.
    // 3. Provides approximately 15–16 decimal digits of precision.
    // 4. Double is the default type inferred for decimal literals.
    // 5. Floating-point calculations can have small precision errors.
    // 6. Double supports very large and very small numbers.
    
    
    // Important points about Float
    // 1. Stores decimal (floating-point) numbers.
    // 2. Float uses 32 bits (4 bytes) of memory.
    // 3. Provides approximately 6–7 decimal digits of precision.
    // 4. Float has less precision than Double.
    // 5. Swift does not automatically convert Float to Double or Double to Float.
    // 6. Use Float when a 32-bit floating-point representation is specifically required.

    
    // Important points about Bool
    // 1. Bool represents Boolean values.
    // 2. It stores only two values: true or false.
    // 3. Commonly used in conditional statements.
    // 4. Commonly used for flags and validation.
    // 5. Comparison operations return Bool values.
    // 6. Swift does not treat 0 and 1 as false and true automatically.
    
    
    // Important points about String
    // 1. String stores a sequence of characters (text).
    // 2. String supports Unicode characters.
    // 3. String is a value type.
    // 4. String is mutable when declared using var.
    // 5. String is immutable when declared using let.
    // 6. String interpolation uses \( ) to insert values.
    // 7. Strings use double quotation marks.
    // 8. Swift provides many built-in String operations and methods.
    
    
    // Important points about Optional
    // 1. Optional represents either a value or nil.
    // 2. Optional types are declared using ?.
    // 3. nil represents the absence of a value.
    // 4. Optionals help handle missing values safely.
    // 5. An optional must be unwrapped before accessing its wrapped value as a non-optional.
    // 6. Common unwrapping techniques include if let, guard let, and nil coalescing (??).
    // 7. Force unwrapping (!) can cause a runtime crash if the value is nil.
    
    
    // Important points about Array
    // 1. Array stores multiple values of the same type.
    // 2. Array maintains the insertion order of elements.
    // 3. Array allows duplicate values.
    // 4. Array uses zero-based indexing.
    // 5. Array is a value type.
    // 6. Array elements can be modified when the array is declared using var.
    // 7. Array elements are accessed using their index.
    
    
    // Important points about Set
    // 1. Set stores multiple values of the same type.
    // 2. Set stores only unique values.
    // 3. Set does not maintain a guaranteed order.
    // 4. Set is a value type.
    // 5. Set provides efficient membership checking.
    // 6. Set supports mathematical operations such as union, intersection, and subtraction.
    
    
    // Important points about Dictionary
    // 1. Dictionary stores data in key-value pairs.
    // 2. Every key must be unique.
    // 3. Multiple keys can have the same value.
    // 4. Dictionary does not guarantee insertion order.
    // 5. Dictionary is a value type.
    // 6. Values are accessed using their corresponding keys.
    // 7. Dictionary keys must conform to the Hashable protocol.
    
}
