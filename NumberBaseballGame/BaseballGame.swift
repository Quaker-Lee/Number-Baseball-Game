//
//  BaseballGame.swift
//  NumberBaseballGame
//
//  Created by 이재건 on 11/6/24.
//

import Foundation

class BaseballGame {
    func start() {
        let userInput = randomNumbers()
        
        while true {
            var input = readLine()
            
            let userInput = String(input!).compactMap { Int(String($0)) }
            
//            userInputArray = userInput
            
        }
    }
    
    func randomNumbers() -> [Int] {
        var numbers = Set<Int>()
        while numbers.count < 3 {
            numbers.insert(Int.random(in: 1...9))
        }
        return Array(numbers)
    }
}



