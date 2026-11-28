
// Generics

// Generics allows to write reusable code and flexible functions, classes , structures, enums that can work with different data types without duplicating code
// In simple words write code once and use it with different data types

// Why do we need Generics?
// Without generics , you might need separate functions for different data types

func printInt(_ value: Int) {
    print(value)
}

func printString(_ value: String) {
    print(value)
}

func printDouble(_ value: Double) {
    print(value)
}

//We are repeating similar code.
//
//With Generics:
func printValue<T>(value: T) {
    print(value)
}

printValue("Jay")
printValue(12)
printValue(10.5)

//Generic Functions
//A generic function uses a placeholder type so it can accept different data types.
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

var first = 10
var second = 20

swapValues(&first, &second)

print(first)  // 20
print(second) // 10

//Generic Functions
//A generic function uses a placeholder type so it can accept different data types.
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

var first = 10
var second = 20

swapValues(&first, &second)

print(first)  // 20
print(second) // 10


//The same function works with other types too:
var name1 = "Jay"
var name2 = "Sam"

swapValues(&name1, &name2)


//Generic Types (Structs)
//We can also create generic structures.
struct Box<T> {
    var value: T
}

let intBox = Box(value: 100)
let stringBox = Box(value: "Hello")

print(intBox.value)    // 100
print(stringBox.value) // Hello


//Here, Box<T> can store different types of values.
// Multiple Generic Parameters
//A generic function or type can have more than one type parameter.
func displayValues<T, U>(_ first: T, _ second: U) {
    print(first)
    print(second)
}

displayValues(10, "Hello")


//Here:
//- T represents Int.
//- U represents String.


// Generic Constraints
// Sometimes we don't want to accept every data type. We want to restrict which types can be used.

// For example:
func compareValues<T: Equatable>(_ a: T, _ b: T) -> Bool {
    return a == b
}

print(compareValues(10, 10))
print(compareValues("Swift", "Swift"))


// Here, T: Equatable means the type must conform to the Equatable protocol.

//This allows us to use == safely.
//
//Other common constraints include:
//- Comparable – supports comparisons such as < and >.
//- Hashable – supports hashing and equality.
//- Numeric – supports numeric operations.


//
//                            Generics                                                Associated Types
//    --------------------------------------------------------------------------------------------------------------------------------------------
//                Used in functions, structs, classes, and enums                    Defined inside protocols
//                        Declared using <T>                                       Declared using associatedtype
//                Type is inferred or specified when used                      Type is determined by the conforming type



// Important points about Generics
// 1. Generics allow reusable and flexible code.
// 2. They work with different data types.
// 3. Generic type parameters are written inside angle brackets <>.
// 4. T is a common name for a generic type parameter.
// 5. Generics support functions, structures, classes, and enums.
// 6. We can use multiple generic type parameters.
// 7. Generic constraints restrict which types can be used.
// 8. Generics provide compile-time type safety.
// 9. Swift uses generics extensively in its standard library.
// 10. Array, Dictionary, and Set are examples of generic types.

