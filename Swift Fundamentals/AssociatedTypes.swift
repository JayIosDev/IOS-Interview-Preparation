
// Associated Types

// What are Associated Types
// Protocol allows to define placeholder type, the actual type is decided by the type that are conforming to that protocol
// In Simple words, Associated types makes protocol flexible by allowing conforming types to choose their own data types

// Why do we need Associated Types
// Imaging you want to create protocol that works with differnet data types Int, String,Float etc
// So with associated type you can write one protocol
// without associated types you need to write multiple protocols

protocol Container {
    associatedtype Item
    
    var items: [Item] { get }
    
    func add(item: Item)
}
// The actual type of Item is decided by the conforming type.

//Conforming with Different Types
//Example 1: Int Container
struct IntContainer: Container {
    var items: [Int] = []
    
    func add(item: Int) {
        print("Added:", item)
    }
}


//Here, Swift infers that Item is Int.
//
//Example 2: String Container
struct StringContainer: Container {
    var items: [String] = []
    
    func add(item: String) {
        print("Added:", item)
    }
}

// Here, Swift infers that Item is String.

// Important points about Associated Types
// 1. Associated types are placeholder types defined inside protocols.
// 2. They are declared using the associatedtype keyword.
// 3. The conforming type determines the actual associated type.
// 4. Swift can often infer the associated type from implementation.
// 5. Different types can use the same protocol with different associated types.
// 6. Associated types make protocols reusable and flexible.
// 7. Associated types can be used in properties, methods, and other type declarations.
// 8. Collections in Swift use associated types, such as Element in Collection.
