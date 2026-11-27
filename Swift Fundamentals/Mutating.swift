

// Mutating
// Mutating used when value type instances need to modify its own properties we need to use mutating

// Its mainly used with Structs and enums

// Classes dont need mutating because they are reference types

// Why Do we need mutating
// structure instance methods cant modify its properties

// Without mutating:
struct Counter {
    var count = 0

    func increment() {
        count += 1 // Error
    }
}


// This produces an error because increment() attempts to modify a property without being marked mutating.

// With mutating:
struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()

counter.increment()

print(counter.count) // 1


// Now it works!

// Important points about Mutating
// 1. The mutating keyword is used with value types.
// 2. Structures and Enumerations can use mutating methods.
// 3. Mutating allows an instance method to modify its properties.
// 4. Mutating methods can modify self.
// 5. Mutating methods require a mutable instance declared using var.
// 6. We cannot call a mutating method on a let structure instance.
// 7. Classes do not require the mutating keyword.
// 8. Mutating is useful when a structure needs to update its own state.
