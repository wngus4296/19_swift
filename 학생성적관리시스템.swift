//
//  main.swift
//  CreditManager
//
//  Created by dm01 on 22/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation

// FileIO.resetFile(fileName: "CreditManager")

class Student: Codable {
    var name: String = ""
    var subjects: [String: String] = [String: String]()
}

var students: [Student] = []
if let studentsFromFile = FileIO.loadFromFile(objectType: [Student].self, fileName: "CreditManager") {
    students = studentsFromFile
}

func menu() {
    print("원하는 기능을 입력해주세요.\n1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    if let menu: String = readLine() {
        if let menu: Int = Int(menu) {
            switch menu {
            case 1: addStudent()
            case 2: removeStudent()
            case 3: addScore()
            case 4: removeScore()
            case 5: grade()
            default: print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
            }
        } else if menu == "X" {
            exitProgram()
        } else {
            print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
        }
    }
}

func addStudent() {
    print("추가할 학생의 이름을 입력해주세요.")
    if let addName: String = readLine(), addName.isEmpty == false {
        for i in students {
            if i.name == addName {
                print("\(addName)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
                return
            }
        }
        let who: Student = Student()
        who.name = addName
        students.append(who)
        print("\(addName) 학생을 추가했습니다.")
    } else {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
    }
}

func removeStudent() {
    print("삭제할 학생의 이름을 입력해주세요.")
    if let removeName: String = readLine(), removeName.isEmpty == false {
        var indexOfStudents: Int = 0
        for i in students {
            if i.name == removeName {
                students.remove(at: indexOfStudents)
                print("\(removeName) 학생을 삭제했습니다.")
                return
            }
            indexOfStudents += 1
        }
        print("\(removeName) 학생을 찾지 못했습니다.")
    } else {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
    }
}

func addScore() {
    print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A0, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.\n입력예) Mickey Swift A+\n만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
    if let information: String = readLine(), information.isEmpty == false {
        let whoScore: [String] = information.components(separatedBy: CharacterSet.whitespaces)
        for i in students {
            if i.name == whoScore[0] {
                if whoScore[2] == "A+" || whoScore[2] == "A0" || whoScore[2] == "B+" || whoScore[2] == "B0" || whoScore[2] == "C+" || whoScore[2] == "C0" || whoScore[2] == "D+" || whoScore[2] == "D0" || whoScore[2] == "F" {
                    i.subjects[whoScore[1]] = whoScore[2]
                    print("\(whoScore[0]) 학생의 \(whoScore[1]) 과목이 \(whoScore[2])로 추가(변경)되었습니다.")
                    return
                } else {
                    print("과목 성적의 입력이 잘못되었습니다. 다시 확인해주세요.")
                    return
                }
            }
        }
        print("입력이 잘못되었습니다.")
    } else {
        print("입력이 잘못되었습니다.")
    }
}

func removeScore() {
    print("삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.\n입력예) Mickey Swift")
    if let information: String = readLine(), information.isEmpty == false {
        let whoScore: [String] = information.components(separatedBy: CharacterSet.whitespaces)
        for i in students {
            if i.name == whoScore[0] {
                i.subjects.removeValue(forKey: whoScore[1])
                print("\(whoScore[0]) 학생의 \(whoScore[1]) 과목의 성적이 삭제되었습니다.")
                return
            }
        }
        print("입력이 잘못되었습니다.")
    } else {
        print("입력이 잘못되었습니다.")
    }
}

func scoreToGrade(Person: Student) {
    var score: Double = 0
    var subNum: Double = 0
    for val in Person.subjects {
        subNum += 1
        switch val.value {
        case "A+": score += 4.5
        case "A0": score += 4.0
        case "B+": score += 3.5
        case "B0": score += 3.0
        case "C+": score += 2.5
        case "C0": score += 2.0
        case "D+": score += 1.5
        case "D0": score += 1.0
        case "F": score += 0
        default: print("입력이 잘못되었습니다.")
        }
    }
    if subNum == 0 {
        print("성적이 없습니다.")
    } else {
        print("\(score / subNum)")
    }
}

func grade() {
    print("평점을 알고싶은 학생의 이름을 입력해주세요.")
    if let whoGrade: String = readLine(), whoGrade.isEmpty == false {
        for i in students {
            if i.name == whoGrade {
                for (key, value) in i.subjects {
                    print("\(key): \(value)")
                }
                print("평점 : ", terminator: "")
                scoreToGrade(Person: i)
                return
            }
        }
        print("\(whoGrade) 학생을 찾지 못했습니다.")
    } else {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
    }
}

func exitProgram() {
    print("프로그램을 종료합니다...")
    FileIO.writeToFile(object: students, fileName: "CreditManager")
    exit(0)
}

// 메인 코드
while true {
    menu()
}
