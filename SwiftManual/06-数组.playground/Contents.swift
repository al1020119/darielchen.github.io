//: Playground - noun: a place where people can play

import UIKit

// 数组: 有序的,同一类型的多个元素的集合

var arrInts = [Int]()                     // [], 定义一个元素类型为Int的可变空数组
arrInts.append(2)                         // [2], arrInts中添加一个为2的元素
arrInts = []                              // [], 空数组的简单定义方式
arrInts = [1, 4]                          // [1, 4], 数组的简单构造方法

var threeDouble = [Double](repeating: 0.0, count: 3) // [0.0, 0.0, 0.0]
var twoDouble = [Double](repeating: 2.0, count: 2)  // [2.0, 2.0]
var fiveDouble = threeDouble + twoDouble      // 数组也能用"+"拼接

twoDouble += threeDouble                  // 等价于twoDouble = twoDouble + threeDouble
print(twoDouble)                          // [2.0, 2.0, 0.0, 0.0, 0.0]

let secondNum = twoDouble[2]              // 0, 通过下标访问元素,数组中第一个元素的下标是0
twoDouble[0] = 3.0                        // 将twoDouble的第一个元素改为3.0
twoDouble[1...2] = [3.0, 3.0]             // 将数组中的[1...2]区间改为[3.0, 3.0]中的元素
print(twoDouble)                          // [3.0, 3.0, 3.0, 0.0, 0.0]

twoDouble.insert(4.0, at: 0)              // 将4.0插入到数组第一个元素
twoDouble.remove(at: 0)                   // 移除0位置的元素,之前后面的元素会自动往前一位
twoDouble.removeLast()                    // 移除最后一个元素

for arrItem in twoDouble {                // 通过for in 循环遍历
    print(arrItem)                        // 依次打印每个元素
}

for (index, value) in twoDouble.enumerated() { // 使用迭代器获取数组元素以及索引号
    print("索引:\(index), 元素:\(value)") // 依次打印索引号及元素 索引号:0, 元素:3.0 ...
}
