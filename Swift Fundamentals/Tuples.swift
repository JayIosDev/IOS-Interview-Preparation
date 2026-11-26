import Playgrounds

#Playground {
    
    // Tuples
    // Tuples is Group of multiple values comnined into single , each value can have different data type
    
    let tuple = (1, "Hello", 3.14, true)
    
    // Accessing tuple elements
    print(tuple.0)
    print(tuple.1)
    print(tuple.2)
    
    // Named Tuples
    let namesTuple = (firstName: "John", lastName: "Doe")
    
    print(namesTuple.firstName)
    print(namesTuple.lastName)
    
    
    // Tuple Type Declaration
    let mixedTuple: (Int, String, Bool, Double, Int) = (10, "Swift", true, 3.14, 20)
    
    print(mixedTuple.0)
    print(mixedTuple.1)
    print(mixedTuple.2)
    print(mixedTuple.3)
    print(mixedTuple.4)
    
    // Modifying Tuple values
    var names: (firstName: String, lastName: String) = ("John", "Doe")
    names.firstName = "Jane"
    print(names.firstName)
    
    // Tuple Decompostion
    let (first, second, third, fourth, fifth) = mixedTuple
    print(first)
    print(second)
    print(third)
    print(fourth)
    print(fifth)
    
    // Returning multiple values from function
    func getUserDetails() -> (String, String, Int) {
        return ("John", "Doe", 25)
    }
    print(getUserDetails().0)
    
    
    // Important points about Tuples
    // 1. A tuple groups multiple values into a single compound value.
    // 2. Tuples can contain values of different data types.
    // 3. Tuple elements can be accessed using index numbers.
    // 4. Tuple indexing starts from 0.
    // 5. Named tuples allow accessing values using meaningful names.
    // 6. Tuples can be declared using explicit types.
    // 7. Use var to modify tuple elements.
    // 8. Use let to make the tuple immutable.
    // 9. Tuple decomposition extracts values into separate variables.
    // 10. Use underscore (_) to ignore unwanted tuple elements.
    // 11. Functions can return multiple values using tuples.
    // 12. Tuples are useful for grouping related values without
    //     creating a separate custom type.
    
}
