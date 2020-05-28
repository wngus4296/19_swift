//
//  main.swift
//  NumberBaseball
//
//  Created by dm01 on 22/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation

class NumberBaseball {
    var round: Int = 0
    var strike: Int = 0
    var ball: Int = 0
    
    func menu() {
        print("1. 게임시작\n2. 게임종료\n원하는 기능을 선택해주세요 : ", terminator: "")
        if let startOrExit: String = readLine() {
            if let startOrExit: Int = Int(startOrExit) {
                switch startOrExit {
                case 1: self.startGame()
                case 2: self.exitGame()
                default: print("입력이 잘못되었습니다.")
                }
            } else {
                print("입력이 잘못되었습니다.")
            }
        }
    }
    
    func startGame() {
        var randomNum: [Int] = []
        for _ in 0...2 {
            randomNum.append(Int.random(in: 1...9))
        }
        
        while true {
            if randomNum[0] == randomNum[1] {
                randomNum[1] = Int.random(in: 1...9)
            }
            if randomNum[0] == randomNum[2] {
                randomNum[2] = Int.random(in: 1...9)
            }
            if randomNum[1] == randomNum[2] {
                randomNum[2] = Int.random(in: 1...9)
            }
            if randomNum[0] != randomNum[1], randomNum[0] != randomNum[2], randomNum[1] != randomNum[2] {
            break
            }
        }
        
        while true{
            print("숫자 3개를 띄어쓰기로 구분하여 입력해주세요.\n중복 숫자는 허용하지 않습니다.")
            print("입력 : ", terminator: "")
            if let inputNum: String = readLine() {
                let num: [String] = inputNum.components(separatedBy: CharacterSet.whitespaces)
                if num.count == 3 {
                    if let num1: Int = Int(num[0]), let num2: Int = Int(num[1]), let num3: Int = Int(num[2]) {
                        if num1 > 0 && num1 < 10, num2 > 0 && num2 < 10, num3 > 0 && num3 < 10, num1 != num2, num1 != num3, num2 != num3 {
                            self.startBaseball(num1: num1, num2: num2, num3: num3, randomNum: randomNum)
                        } else {
                            print("입력이 잘못되었습니다.")
                        }
                    } else {
                        print("입력이 잘못되었습니다.")
                    }
                } else {
                    print("입력이 잘못되었습니다.")
                }
            } else {
                print("입력이 잘못되었습니다.")
            }
        }
    }
    
    func startBaseball(num1: Int, num2: Int, num3: Int, randomNum: [Int]) {
        round += 1
        strike = 0
        ball = 0
        
        if randomNum[0] == num1 {
            strike += 1
        } else if randomNum[0] == num2 || randomNum[0] == num3 {
            ball += 1
        }
        if randomNum[1] == num2 {
            strike += 1
        } else if randomNum[1] == num1 || randomNum[1] == num3 {
            ball += 1
        }
        if randomNum[2] == num3 {
            strike += 1
        } else if randomNum[2] == num1 || randomNum[2] == num2 {
            ball += 1
        }
        
        print("\(strike) 스트라이크, \(ball) 볼")
        print("남은 기회 : \(9 - round)")
        
        if strike == 3, 9 - round > 0 {
            print("사용자 승리!")
            round = 0
            self.menu()
        } else if 9 - round == 0 {
            print("컴퓨터 승리...!")
            round = 0
            self.menu()
        }
    }
    
    func exitGame() {
        exit(0)
    }
}


// 메인코드
let startNumberBaseball: NumberBaseball = NumberBaseball()
while true {
    startNumberBaseball.menu()
}
