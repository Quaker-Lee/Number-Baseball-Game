//
//  BaseballGame.swift
//  NumberBaseballGame
//
//  Created by 이재건 on 11/6/24.
//

import Foundation

class BaseballGame {
    // 난수 생성
    func randomNumbers() -> [Int] {
        let numbers = (1...9).map { $0 } // 1부터 9까지 배열로 담음
        let shuffledNumbers = numbers.shuffled() // 셔플. 섞습니다.

        return [Int](shuffledNumbers[0...2]) //섞은 것을 Int배열로, 첫번째부터 세번째 값까지 리턴
    }
    
    // 게임 로직
    func start() {
        let gameNumber = randomNumbers()
        print(gameNumber)
        
        //user input parts
        let input = readLine() ?? "" //유저 입력값 입력받음. 오류가 나서 nil이 들어오면 빈 문자열로 처리
        
        //예외처리 구현해야함
        
        
        let stringArr = input.map { String($0) }.compactMap { Int($0) }
        //아래의 두 코드를 chaining해서 작성. 유저가 입력한 값을 String 배열로 바꾸고 그걸 다시 Int 배열로 바꿈.
        //compactMap을 사용하여 옵셔널을 벗기고 Nil은 삭제해버림
        //let stringArr = input.map { String($0) } - String 배열로 변경
        //print(stringArr.compactMap { Int($0) }) - 위의 코드를 다시 Int 배열로 바꿈
        
        var strike = 0
        var ball = 0
        
        // 사용자가 입력한 숫자 순회. 게임 로직
        for (index, number) in stringArr.enumerated() { //튜플로 인덱스와 값
            //enumerated 메소드는 요소들의 인덱스와 값을 동시에 접근할 수 있게 해주는 메소드이다.
            
            //스트라이크
            if number == gameNumber[index] {
                strike += 1
                continue
            }
            
            //볼
            if gameNumber.contains(number) {
                ball += 1
                continue
            }
        }
        
        if strike == 0 && ball == 0 {
            print("[ nothing! try again. ]")
        } else if strike == 3 {
            print("[ 삼진 아웃!! 이겼습니다! ]")
        } else {
            print("\(strike) 스트라이크 | \(ball) 볼")
        }
        
        //
      
    }
    
}




