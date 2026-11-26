import Playgrounds

#Playground {

    // Higher Order Functions
    // Higher Order Functions are the functions that accept another function or closure as an arguments
    // And return another function
    
    //    In Swift commonly used Higher Order Functions are:
    //    - map
    //    - filter
    //    - reduce
    //    - flatMap
    //    - sorted
    //    - compactMap
    
    // Map
    
    // Transforms each element in collection into new element and returns new collection
    let numbers = [1, 2, 3, 4, 5]

    let doubledNumbers = numbers.map{ number in
        number * 2
    }
    print(doubledNumbers)
    // [2, 4, 6, 8, 10]
    
    // Remember: map = Transform every element.
    
    
    // filter()
    
    // Purpose: Selects the element that satisfies the condition
    
    let evenNumbers = number.filter { $0 / 2 == 0    }
    
    print(evenNumbers)
    // 2,4
    
    // Reduce()
    
    // Purpose: Combine all elements of as collection into as single value
    
    let sum = numbers.reduce(0) { $0 + $1 }
    
    print(sum)
    
    let names = ["Jay", "Ram", "G"]
    names.reduce("Jay") { $0 + $1.count }
    
    // $0 Accumulated result
    // $1 is the current value
    
    // Output:- 15
    
    
    // Compact Map
    // Transforms elements and removes nil values
    
    let maybeNumbers = [1, "Jay", 2, "Ram", 3]
    
    let nonNilNumbers = maybeNumbers.compactMap( Int($0) )
    
    print(nonNilNumbers)
    // 1,2,3
    
    
    // Flat map
    // Transform each element into a sequence and flattens the resulting nested collections into single collection
    
    let nestedCollection = [[1,2],[3,4],[5,6]]
    
    let flatMappedCollection = nestedCollection.flatMap{$0}
    print(flatMappedCollection)
    
    // [1,2,3,4,5,6]
    
    
    // Important points about Higher-Order Functions
    // 1. Higher-order functions accept functions or closures as arguments,
    //    or return functions.
    // 2. map() transforms every element in a collection.
    // 3. map() preserves the number of elements.
    // 4. filter() selects elements based on a condition.
    // 5. filter() may return fewer elements than the original collection.
    // 6. reduce() combines all elements into a single accumulated result.
    // 7. reduce() requires an initial value.
    // 8. compactMap() transforms elements and removes nil results.
    // 9. flatMap() flattens nested collections.
    // 10. $0 and $1 are shorthand argument names used inside closures.
    // 11. Higher-order functions make collection operations concise and readable.
    
    
}
