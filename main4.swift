//
//  main.swift
//  7-12
//
//  Created by dm01 on 12/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation
//
//func timesTable (x: Int) {
//    for i in 1...9 {
//        print("\(x) * \(i) = \(x * i)")
//    }
//}
//
//print("원하는 단을 입력해주세요: ", terminator: "")
//if let x: String = readLine() {
//    if x.isEmpty { // isEmpty는 nil이아닌, 빈 문자열을 가리킨다.
//        print("빈 문자열입니다.")
//    } else {
//        if let x: Int = Int(x) {
//            if x > 0 && x < 20 {
//                timesTable(x: x)
//            } else {
//                print("입력이 잘못되었습니다. 1-19 사이의 값을 입력해주세요.")
//            }
//        }else {
//            print("문자열 -> 숫자 변환 실패")
//        }
//    }
//}
//

//print("좋아하는 동물을 몇 가지 입력해주세요. 구분은 띄어쓰기로 해주세요.")
//if let inputString: String = readLine() {
//    print(inputString)
//    let animals: [String] = inputString.components(separatedBy: CharacterSet.whitespaces)
//    print(animals
//
//    for animal in animals {
//        if animal == "pig"
//            print("돼지 여기있어요")
//        }
//    }
//}
//
//// 좋아하는 동물을 몇 가지 입력해주세요. 구분은 콤마(,)로 해주세요.
//// mouse, horse, pig
//
//자갸...
//사랑해...너의 옆자리로 가고시퍼...
//컴퓨터 옮기자

// window+shift+k


//while true {
//    print("1에서 5사이의 정수를 입력해주세요. 종료하려면 x를 입력하세요.: ", terminator: "")
//    if let num: String = readLine() {
//        if num == "x" {
//            print("x입력. 종료.")
//            break
//        } else {
//            if let number: Int = Int(num), number > 0 && number < 6 {
//                print("\(number)을 입력하셨군요!")
//            } else {
//                print("입력이 잘못되었습니다.")
//            }
//        }
//    }
//}


func timesTable (x: Int) {
    for i in 1...9 {
        print("\(x) * \(i) = \(x * i)")
    }
}

//while true {
//    print("원하는 단을 입력해주세요. 복수의 입력은 띄어쓰기 해주세요.: ", terminator: "")
//    if let x: String = readLine() {
//        let dan: [String] = x.components(separatedBy: CharacterSet.whitespaces)
//        if dan.isEmpty {
//            print("빈 문자열입니다.")
//        }else {
//            for i in dan {
//                if let i: Int = Int(i) {
//                    if i > 0 && i < 20 {
//                        timesTable(x: i)
//                        print("---\(i)단 끝---")
//                    } else {
//                        print("입력이 잘못되었습니다. 1-19 사이의 값을 입력해야합니다.")
//                    }
//                } else if i == "x" {
//                    print("x입력. 종료.")
//                    exit(0)
//                }
//                else {
//                    print("입력이 잘못되었습니다.")
//                }
//            }
//        }
//    }
//}

// return 키워드가 함수를 종료하듯
// exit(0)은 프로그램을 종료한다.

// if가 많으면 줄이기 위해 함수를 사용한다.
// 값을 입력받는 것을 함수로 만든다.

func inputx() -> [String] {
    print("원하는 단을 입력해주세요. 복수의 입력은 띄어쓰기 해주세요.: ", terminator: "")
    if let x: String = readLine() {
        return x.components(separatedBy: CharacterSet.whitespaces)
    }
    return []
}


while true {
    let dan = inputx()
    if dan.isEmpty {
        print("빈 문자열입니다.")
        for i in dan {
            if let i: Int = Int(i) {
                if i > 0 && i < 20 {
                    timesTable(x: i)
                    print("---\(i)단 끝---")
                } else {
                    print("입력이 잘못되었습니다. 1-19 사이의 값을 입력해야합니다.")
                }
            } else if i == "x" {
                print("x입력. 종료.")
                exit(0)
            }
            else {
                print("입력이 잘못되었습니다.")
            }
        }
    }
}
