//
//  RandomNumber.swift
//  NumberBaseballGame
//
//  Created by 이재건 on 11/6/24.
//

import Foundation

// 이곳에서는 랜덤한 값을 생성합니다.
class GenerateNumber {
    func randomNumbers() -> [Int] {
        let numbers = (1...9).map { $0 } // 1부터 9까지 배열로 담음
        let shuffledNumbers = numbers.shuffled() // 셔플. 섞습니다.

        return [Int](shuffledNumbers[0...2]) //섞은 것을 Int배열로, 첫번째부터 세번째 값까지 리턴
    }
}

