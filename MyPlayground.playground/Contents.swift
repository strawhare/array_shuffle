import UIKit

var array = [Int](1...100000)

//approach1
//配列をシャッフルし順番に取り出す
print("approach1")
func shuffle1(_ array: [Int]) -> [Int] {
    var array = array
    for i in 0..<array.count {
        let j = Int(arc4random_uniform(UInt32(array.count)))
        let tmp = array[i]
        array[i] = array[j]
        array[j] = tmp
    }
    return array
}
let start1 = Date()
array = shuffle1(array)
let elapsed1 = Date().timeIntervalSince(start1)
//array.forEach {
//    print($0)
//}

//approach2
//ランダムにインデックスを指定し、要素を減らしていく。
array = [Int](1...100000)
print("approach2")
func shuffle2(_ array: [Int]) -> [Int] {
    var array = array
    var newArray:[Int] = []
    for _ in 0..<array.count {
        let index = Int(arc4random_uniform(UInt32(array.count)))
        newArray.append(array[index])
        array.remove(at: index)
    }
    return newArray
}

let start2 = Date()
array = shuffle1(array)
let elapsed2 = Date().timeIntervalSince(start2)
//array.forEach {
//    print($0)
//}

print("###############")
print("処理時間: \(elapsed1)")
print("処理時間: \(elapsed2)")
