// For each element of the array, the selection sort swaps positions with the lowest value from the rest of the array. As a result, the array gets sorted from the left to the right.

var unsortedIntegers = [String]()

func readWords() -> [String] {
var line : String?
repeat {
    line = readLine()
    if line != nil {
        unsortedIntegers.append(line!)
    }
} while line != nil
return unsortedIntegers
}

func selectionSort(unsortedIntegers: [String]) -> [String] {

    var sortingIntegers = readWords()
    
    for i in 0..<sortingIntegers.count - 1 { //This loop ends at index array.count -2. The very last element will automatically be in the correct position because at that point there are no other smaller elements left.
        var smallestElement = i
        for j in i + 1..<sortingIntegers.count {  //This is the inner loop. It finds the lowest number in the rest of the array.
            if sortingIntegers[j] < sortingIntegers[smallestElement] {
                smallestElement = j
            }
        }
            sortingIntegers.swapAt(i, smallestElement) //Swap the lowest number with the current array index.
    }

    return sortingIntegers
}
let sortedIntegers = selectionSort(unsortedIntegers: unsortedIntegers)
for element in sortedIntegers {
    print(element)
}
