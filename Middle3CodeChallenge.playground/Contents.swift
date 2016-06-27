//: Playground - noun: a place where people can play

import UIKit

var arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
var arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

func middleThree(testArray: [Int]) -> [Int]? {
    
    if (testArray.count % 2 != 0) {
            //Appears that dividing the testArray.count by two returns the correct index for the center
            let mid = (testArray.count/2)
            let returnArr = [testArray[mid-1], testArray[mid], testArray[mid+1]]
            return returnArr
        } else {
            print("Even number of items in array")
            return nil
    }
}

middleThree(arr1)
middleThree(arr2)