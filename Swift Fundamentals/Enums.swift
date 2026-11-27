import Playgrounds

#Playground {
    
    // Enumerations
    
    // What is Enum?
    // Enum is a data type that defines group of related values under one common type
    
    // In Simple words enums are the fixed set of possible options
    
    enum Direction {
        case north
        case south
        case east
        case west
    }
    
    var currentDirection = Direction.north
    
    currentDirection = .south
    
    //    Why do we use enums?
    //    - To represent a fixed set of options.
    //    - To make code more readable.
    //    - To avoid using unrelated string values.
    //    - To make code safer through type checking.
    
    // Enum cases represents possible values of enum
    //    Using Enums with Switch Statements
    //    This is one of the most common uses of enums.
    enum NetworkStatus {
        case loading
        case success
        case failure
    }
    
    let status = NetworkStatus.success
    
    switch status {
    case .loading:
        print("Loading...")
        
    case .success:
        print("Data loaded successfully")
        
    case .failure:
        print("Something went wrong")
    }
    
    // Raw Value allows each enum case to have predefined value of the same type
    
    enum Direction: String {
        case north = "North"
        case south = "South"
        case east = "East"
        case west = "West"
    }
    
    print(Direction.north.rawValue)
    // North
    
    //    Associated Values in Enums
    //    Associated values allow each enum case to store additional information.
    //
    //    Unlike raw values, different cases can store different types of associated data.
    
    //    Example:
    enum NetworkResult {
        case success(String)
        case failure(Int, String)
    }
    
    
    //    Using associated values:
    let result = NetworkResult.success("Data loaded")
    
    //    CaseIterable
    //    CaseIterable is a protocol that allows you to access all cases of an enum through the allCases property.
    enum Weekday: CaseIterable {
        case monday
        case tuesday
        case wednesday
        case thursday
        case friday
        case saturday
        case sunday
    }
    
    print(Weekday.allCases)
    print(Weekday.allCases.count)
    // 7
    
    
    // Important points about Enums
    // 1. Enum is a data type that defines a group of related cases.
    // 2. Enum cases represent the possible values of an enum.
    // 3. Enums provide type safety.
    // 4. Enum cases can be handled using switch statements.
    // 5. Swift requires switch statements to handle all possible cases.
    // 6. Raw values are predefined values assigned to enum cases.
    // 7. Raw values can be String, Int, or other supported literal types.
    // 8. Associated values allow enum cases to store additional data.
    // 9. Different enum cases can have different associated value types.
    // 10. Enums can contain computed properties and methods.
    // 11. CaseIterable provides access to all enum cases using allCases.
    // 12. Enums are commonly used to represent API responses,
    //     navigation, payment status, and UI states.
    
    
}
