//
//  main.swift
//  7-11
//
//  Created by dm01 on 11/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation
/*
// Array<datatype>을 [datatype]으로 바꿔서 정의할 수 있지만, Set은 그런거 없음.
//var names: Set<String> = Set<String>()
//var names: Set<String> = []

// Array와 마찬가지로 대괄호를 사용한다.
var names: Set<String> = ["JuHyeon", "YuJeong", "HeeJin", "YoungHyeon", "JuHyeon"]
// 그렇기 때문에 타입 추론을 사용하게 되면 컴파일러는 Set이 아닌 Array로 타입을 지정한다.
var numbers = [100, 200, 300]
print(type(of: numbers)) // Array<Int>

print(names.isEmpty)
print(names.count) // 중복값은 허용하지 않는다.

// 세트에 요소를 추가할 때: insert(_:)
// 세트에 요소를 삭제할 때: remove(_:)

print(names.count)
names.insert("Jenny")
print(names.count)

print(names.remove("JuHyeon"))
print(names.remove("SooHyun"))

let englishClassStudents: Set<String> = ["john", "chulsoo", "yagom"]
let koreanClassStudents: Set<String> = ["jenny", "yagom", "chulsoo", "hana", "minsoo"]

// 교집합 {"yagom", "chulsoo"}. intersection
let intersectSet: Set<String> = englishClassStudents.intersection(koreanClassStudents)

// 여집합의 합(배타적 논리합) {"john", "jenny", "hana", "minsoo"} symmetricDifference
let symmetricDiffSet: Set<String> = englishClassStudents.symmetricDifference(koreanClassStudents)

// 합집합 {"minsoo", "jenny", "john", "yagom", "chulsoo", "hana"} union
let unionSet: Set<String> = englishClassStudents.union(koreanClassStudents)

// 차집합 {"john"} substract
let substractSet: Set<String> = englishClassStudents.subtracting(koreanClassStudents)

print(unionSet.sorted())


let 새: Set<String> = ["비둘기", "닭", "기러기"]
let 포유류: Set<String> = ["사자", "호랑이", "곰"]
let 동물: Set<String> = 새.union(포유류)

print(새.isDisjoint(with: 포유류)) // 서로 배타적인지
print(새.isSubset(of: 동물)) // 새가 동물의 부분집합인지
print(동물.isSuperset(of: 포유류)) // 동물은 포유류의 전체집합인지
print(동물.isSuperset(of: 새)) // 동물은 새의 전체집합인지

let 이공계과목: Set<String> = ["국어", "영어", "수학", "물리", "화학"]
let 인문계과목: Set<String> = ["국어", "영어", "수학", "생윤", "사회문화"]

let intersectSubject: Set<String> = 이공계과목.intersection(인문계과목)
let unionSubject: Set<String> = 이공계과목.union(인문계과목)
print(intersectSubject)
print(unionSubject)

// typealias 타입 별칭 = 타입

// 튜플은 (소괄호)
// String, Int, Double 타입을 갖는 튜플
var person: (String, Int, Double) = ("yagom", 100, 182.5)

// 인덱스를 통해서 값을 빼올 수 있다.
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")

person.1 = 99
person.2 = 178.5

print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")


var emergencyCallNumbers: [String: Int] = ["경찰": 112, "소방": 119, "간첩": 111, "다산": 120]
print(emergencyCallNumbers)

if let firestation: Int = emergencyCallNumbers["소방"] {
    print(firestation) // 키의 값 출력
}

emergencyCallNumbers["소방"] = 911 // 소방 값 변경
emergencyCallNumbers["소방"] = nil // 소방 삭제
emergencyCallNumbers.removeValue(forKey: "소방") // 소방 삭제

// for - in iteration
for (key, value) in emergencyCallNumbers{
    print("\(key)에 해당하는 값은 \(value)입니다.")
} // 순서가 지멋대로


// typealias를 통해 조금 더 단순하게 표현해볼 수도 있습니다.
typealias StringIntDictionary = [String: Int]

// 키는 String, 값은 Int 타입인 빈 딕셔너리를 생성합니다.
var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()

// 위 선언과 같은 표현입니다.
var numberForName: [String: Int] = [String: Int]()

// 위 코드와 같은 동작을 합니다.
var numberForName: StringIntDictionary = StringIntDictionary()

// 딕셔너리의 키와 값 타입을 정확히 명시해줬다면 [:]만으로도 빈 딕셔너리를 생성할 수 있습니다.
var numberForName: [String: Int] = [:]

 
// 초깃값을 주어 생성해줄 수도 있습니다.
var numberForName: [String: Int] = ["yagom": 100, "chulsoo": 200, "jenny": 300]

print(numberForName.isEmpty)
print(numberForName.count) // 총 3개의 묶음

print(numberForName["chulsoo"])
print(numberForName["minji"])

numberForName["chulsoo"] = 150
print(numberForName["chulsoo"])

numberForName["max"] = 999 // max라는 키를 추가한다.
print(numberForName["max"])

print(numberForName.removeValue(forKey: "yagom"))

// 위에서 yagom에 해당하는 값이 이미 삭제되었으므로 nil이 반환됩니다.
// 키에서 해당하는 값이 없으면 기본값을 돌려주도록 할 수도 있습니다.
print(numberForName.removeValue(forKey: "yagom"))

// yagom의 키에 해당하는 값이 없으면 기본으로 0이 반환됩니다.
print(numberForName["yagom", default: 0])



// 함수
// 일을 처리하는 코드의 블록
func name() {
// 코드 묶음...
}

func moveForward() {
    print("앞으로 한 칸 움직입니다.")
}

moveForward()

func move(steps: Int) {
    print("\(steps)칸 움직입니다.")
}

move(steps: 5)

*/
//code.org 마인크래프트
func moveForward() {
    print("앞으로 한 칸 움직입니다.")
}

enum Direction {
    case left, right
}

func turn(direction: Direction) {
    if direction == Direction.left {
        print("왼쪽으로 회전합니다.")
    } else {
        print("오른쪽으로 회전합니다.")
    }
}

turn(direction: Direction.right)

func destroy(object: String) {
    print("\(object)을(를) 파괴했습니다.")
}

moveForward()
moveForward()
destroy(object: "나무")

func shaving(object: String) {
    print("\(object)의 털을 깎습니다.")
}

print("3번째")
moveForward()
moveForward()
shaving(object: "Sheep")
turn(direction: Direction.right)
moveForward()
shaving(object: "Sheep")


func drop(something: String) {
    print("\(something)을 내려놓습니다.")
}

print("5번 미션")
for _ in 0...3 { // i 안쓸거면 _사용
    drop(something: "자작나무")
    moveForward()
}

print("6번 미션")
for _ in 0...2 {
    for _ in 0...2 {
        moveForward()
        drop(something: "자작나무")
    }
    turn(direction: Direction.right)
}
 // ctrl + i  열정리
 // command + /

func crop(what: String) {
    print("\(what)을(를) 심습니다.")
}

print("7번 미션")
for _ in 0...5 {
    crop(what: "작물")
    moveForward()
}
turn(direction: Direction.right)
moveForward()
moveForward()
turn(direction: Direction.right)
for _ in 0...5 {
    moveForward()
    crop(what: "작물")
    
}

print("8번 미션")
turn(direction: Direction.left)
for _ in 0...2 {
    moveForward()
}
for _ in 0...1 {
    turn(direction: Direction.right)
    moveForward()
    turn(direction: Direction.left)
    moveForward()
}

print("9번 미션")
turn(direction: Direction.left)
for _ in 0...1 {
    destroy(object: "블록")
    moveForward()
}
drop(something: "횃불")
turn(direction: Direction.right)
moveForward()
turn(direction: Direction.left)
drop(something: "횃불")

print("10번 미션")
moveForward()
drop(something: "조약돌")
moveForward()
moveForward()
for _ in 0...1 {
    destroy(object: "블록")
    moveForward()
}


print("11번 미션")
for i in 0...6 {
    destroy(object: "블록")
    if i == 1 || i == 3 || i == 4 {
        drop(something: "조약돌")
    }
    moveForward()
}

for i in 0...6 {
    destroy(object: "블록")
    switch i {
    case 1, 3, 4: drop(something: "조약돌")
    default: break // break로 for문을 멈추지 않는다. 따라서 이 문제에서는 if문을 쓰는게 더 낫다.
    }
    moveForward()
}

print("12번 미션")
var k: Int = 1
for _ in 0...2 {
    for _ in 0...1{
        moveForward()
    }
    destroy(object: "블록")
    if k == 3 || k == 6 || k == 9 {
        drop(something: "조약돌")
    }
    moveForward()
    turn(direction: Direction.right)
    k += 1
}

print("13번 미션")
for _ in 0...1 {
    turn(direction: Direction.right)
    for _ in 0...5 {
        drop(something: "레일")
        moveForward()
    }
}
