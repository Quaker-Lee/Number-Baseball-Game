//
//  RandomNumber.swift
//  NumberBaseballGame
//
//  Created by 이재건 on 11/6/24.
//

import Foundation

// 이곳에서는 랜덤한 값을 생성합니다.
class GenerateNumber {
    func randomNumbers() {
        let numbers = (1...9).map { $0 } // 1부터 9까지 배열로 담음
        let shuffledNumbers = numbers.shuffled() // 셔플. 섞습니다.

        print(shuffledNumbers[0...2]) // 섞은것의 첫번째부터 세번째 자리까지 출력
    }
}

//구 코드
//class GenerateNumber {
//    func randomNumbers() -> [Int] {
//        var numbers = Set<Int>()
//        while numbers.count < 3 {
//            numbers.insert(Int.random(in: 1...9))
//        }
//        return Array(numbers)
//    }
//}
