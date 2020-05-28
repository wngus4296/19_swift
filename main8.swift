//
//  main.swift
//  7-18
//
//  Created by dm01 on 18/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation

// 딕셔너리 안에 튜플이 있는 개념

enum RCP: Int, CaseIterable {
    case scissor = 1
    case rock = 2
    case paper = 3
    
}

class RCPGame {
    var win: Int = 0
    var count: Int = 0
    
    func inputMenu() {
        print("1. 가위\n2. 바위\n3. 보\n4. 종료\n선택: ", terminator: "")
        if let mychoice: String = readLine() {
            if let mychoice: Int = Int(mychoice){
                if mychoice > 0 && mychoice < 4 {
                    winLose(mychoice: mychoice)
                } else if mychoice == 4 {
                    print("종료!")
                    print("총 게임 횟수는 \(self.count)이고, 총 이긴 횟수는 \(self.win)입니다.")
                    exit(0)
                } else {
                    print("숫자는 1~4까지 입력가능합니다.")
                }
            } else {
                print("입력이 잘못되었습니다.")
            }
        } else {
                print("입력이 잘못되었습니다.")
        }
    }
    
    func winLose(mychoice: Int) {
        let comchoice: Int = RCP.allCases.randomElement()!.rawValue
        var computer: String = ""
        var me: String = ""
        if mychoice == 1 {
            me = "가위"
        } else if mychoice == 2 {
            me = "바위"
        } else if mychoice == 3 {
            me = "보"
        }
        if comchoice == 1 {
            computer = "가위"
            count += 1
            if mychoice == 1 {
                print("당신의 선택: \(me), 컴퓨터의 선택: \(computer)")
                winpercent(result: "비김")
            } else if mychoice == 2 {
                print("당신의 선택: \(me), 컴퓨터의 선택: \(computer)")
                winpercent(result: "이김")
            } else if mychoice == 3 {
                print("당신의 선택: \(me), 컴퓨터의 선택: \(computer)")
                winpercent(result: "짐")
            }
        } else if comchoice == 2 {
            computer = "바위"
            count += 1
            if mychoice == 1 {
                print("당신의 선택: \(me), 컴퓨터의 선택: \(computer)")
                winpercent(result: "짐")
            } else if mychoice == 2 {
                print("당신의 선택: \(me), 컴퓨터의 선택: \(computer)")
                winpercent(result: "비김")
            } else if mychoice == 3 {
                print("당신의 선택: \(me), 컴퓨터의 선택: \(computer)")
                winpercent(result: "이김")
            }
        } else if comchoice == 3{
            computer = "보"
            count += 1
            if mychoice == 1 {
                print("당신의 선택: \(me), 컴퓨터의 선택: \(computer)")
                winpercent(result: "이김")
            } else if mychoice == 2 {
                print("당신의 선택: \(me), 컴퓨터의 선택: \(computer)")
                winpercent(result: "짐")
            } else if mychoice == 3 {
                print("당신의 선택: \(me), 컴퓨터의 선택: \(computer)")
                winpercent(result: "비김")
            }
        }
    }

    
    func winpercent(result: String) {
        switch result {
        case "비김": print("현재 당신의 승률: \((Int(Double(win) / Double(count) * 100) * 10) / 10)%")
        case "이김":
            win += 1;
            print("현재 당신의 승률: \((Int(Double(win) / Double(count) * 100) * 10) / 10)%")
        case "짐": print("현재 당신의 승률: \((Int(Double(win) / Double(count) * 100) * 10) / 10)%")
        default: break
        }
    }
    
}

print("가위, 바위, 보 게임!")

let startGame: RCPGame = RCPGame()

while true {
    startGame.inputMenu()
   
}

