
// Value Semantics

// Value Semantics means When you assign a value to another variable swift creates independent copy

// Changing one variable doesnt effect another
//In Swift, these types generally have value semantics:
//- Int, String, Bool
//- Array, Dictionary, Set
//- Struct
//- Enum
//- Tuple
//Example:
struct User {
    var name: String
}

var user1 = User(name: "John")

var user2 = user1

user2.name = "David"

print(user1.name) // John
print(user2.name) // David



// Reference Semantics

// Reference Semantics means when you assign a value to another variable swift creates copies refernce not object itself
//Important Swift Concept: Copy-on-Write (COW)
//You might wonder: if arrays are value types, does Swift immediately copy the entire array every time we assign it?

//No. Swift uses Copy-on-Write optimization for standard collections such as Array, Dictionary, and Set.

//It shares the underlying storage until one of the copies is modified. At that point, Swift creates a separate copy if needed.

var numbers1 = [10, 20, 30]

var numbers2 = numbers1

numbers2.append(40)

print(numbers1) // [10, 20, 30]
print(numbers2) // [10, 20, 30, 40]

// Important points about Value vs Reference Semantics
// 1. Value semantics means assigning a value creates an independent copy.
// 2. Reference semantics means assigning an object copies its reference.
// 3. Structs and Enums are value types.
// 4. Classes are reference types.
// 5. Changing one struct variable does not affect another copied variable.
// 6. Changing an object through one class reference is visible through other references to that object.
// 7. Swift uses Copy-on-Write (COW) for Array, Dictionary, and Set.
// 8. Value types help prevent unintended shared-state changes.
// 9. Reference types support shared state and object identity.
// 10. Use structs by default when shared identity is not required.
