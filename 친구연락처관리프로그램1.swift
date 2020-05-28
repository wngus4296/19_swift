//
//  main.swift
//  친구 연락처 관리 프로그램
//
//  Created by dm01 on 19/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation
//FileIO.resetFile(fileName: "contacts") -> 파일에 쓰인것을 리셋할 때: 쓰고 실행, 주석처리
// 친구 연락처 관리 프로그램

class Person: Codable {
    var name: String = ""
    var mobile: String = ""
    var address: String = ""
    
    init(name: String, mobile: String, address: String){
        self.name = name
        self.mobile = mobile
        self.address = address
    }
    
}

var friends: [Person] = []
if let contactsFromFile = FileIO.loadFromFile(objectType: [Person].self, fileName: "contacts") {
    friends = contactsFromFile
}

func menu() {
    print("1. 새 친구 등록\n2. 저장된 친구 수 출력\n3. 친구의 이름을 입력받아 친구의 정보 출력\nx. 종료")
    print("번호를 입력하세요: ", terminator: "")
    if let selectMenu: String = readLine() {
        if let selectMenu: Int = Int(selectMenu) {
            if selectMenu == 1 {
                register()
            } else if selectMenu == 2 {
                printCount()
            } else if selectMenu == 3 {
                outputinfo()
            } else {
                print("1~3의 숫자나 x만 입력할 수 있습니다.")
            }
        } else if selectMenu == "x" {
            print("프로그램을 종료합니다.")
            FileIO.writeToFile(object: friends, fileName: "contacts")
            exit(0)
        } else {
            print("입력이 잘못되었습니다.")
        }
    } else {
        print("입력이 잘못되었습니다.")
    }
}

func register() {
    print("새 친구를 등록합니다.\n친구의 정보를 입력해주세요. 각각의 입력은 띄어쓰기 해주세요.")
    if let new: String = readLine() {
        let newString: [String] = new.components(separatedBy: CharacterSet.whitespaces)
        let newFriends: Person = Person(name: newString[0], mobile: newString[1], address: newString[2])
        
        friends.append(newFriends)
    }
}

func printCount() {
    print("저장된 친구의 수는 \(friends.count)명 입니다.")
}

func outputinfo() {
    print("정보를 찾을 친구의 이름을 입력하세요.: ", terminator: "")
    if let findWho: String = readLine() {
        for find in friends {
            if find.name == findWho {
                print("\(find.name) \(find.mobile) \(find.address)")
                break // for문을 나간다.
                //return // 함수를 종료한다.
            }
        }
    } else {
        print("입력이 잘못되었습니다.")
    }
}

while true {
    menu()
}
