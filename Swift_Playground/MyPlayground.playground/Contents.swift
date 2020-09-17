import UIKit

func filterLessThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredSetOfNumbers = [Int]()
    for num in numbers {
        if num < value {
            filteredSetOfNumbers.append(num)
        }
    }
    return filteredSetOfNumbers
}

func filterWithPredicateClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var filteredNumbers = [Int]()
    for num in numbers {
        //perfrom some condition check here
        if closure(num) {
            filteredNumbers.append(num)
        }
    }
    return filteredNumbers
}

func divisibleByFive(value: Int) -> Bool {
    return value % 5 == 0
}

func greaterThanThree(value: Int) -> Bool {
    return value > 3
}

let filteredList = filterWithPredicateClosure(closure: divisibleByFive, numbers: [1, 2, 3, 4, 5, 10])

//let filteredList = filterWithPredicateClosure(closure: { (num) -> Bool in
//    return num < 20
//}, numbers: [1, 2, 3, 4, 5, 10])
print(filteredList)
//let filteredList = filterLessThanValue(value: 5, numbers: [1, 2, 3, 4, 5, 10])
//print(filteredList)
