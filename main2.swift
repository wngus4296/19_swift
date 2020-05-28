//
//  main.swift
//  7-10
//
//  Created by dm01 on 10/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation
/*
print("이름을 입력해주세요: ", terminator: "") // 줄바꿈 명령어가 기본적으로 들어있다. terminator: "\n" 이 들어있음. 여기서 \n을 뺀다.
let userName: String? = readLine() // 영어로 받는다고 생각, 옵셔널. alt키 누른상태에서 함수 클릭하면 정보뜬다.

if let name = userName {
    print("당신의 이름은 \(name)이군요!")
} else {
    print("userName == nil") // readLine은 항상 값이 있다. 따라서 nil일 수 없음.
}

print("나이를 입력해주세요: ", terminator: "")

if let age: String = readLine() {
    if age.isEmpty { // isEmpty는 nil이아닌, 빈 문자열을 가리킨다.
        print("빈 문자열입니다.")
    } else {
        if let age: Int = Int(age) {
            print("당신은 \(age)살이군요!")
        } else {
            print("문자열 -> 숫자 변환 실패")
        }
    }
}

print("나이를 입력해주세요: ", terminator: "")

if let age: String = readLine(), // swift에서 ,의 의미는 &&와 같다.
    age.isEmpty == false {
        if let age: Int = Int(age) {
            print("당신은 \(age)살이군요!")
        } else {
            print("문자열 -> 숫자 변환 실패")
        }
    }


//나
print("숫자 1을 입력하세요: ", terminator: "")
var num1: String? = readLine()
print("숫자 2를 입력하세요: ", terminator: "")
var num2: String? = readLine()

if let n1: String = num1, let n2: String = num2,
    n1.isEmpty == false, n2.isEmpty == false {
        if let n1: Double = Double(n1), let n2: Double = Double(n2) {
            let aver: Double = Double(((n1 + n2) / 2))
            print("두 수의 평균은 \(aver)입니다.")
        } else {
            print("숫자 입력이 잘못되었습니다.")
        }
} else {
        print("숫자 입력이 잘못되었습니다.")

//교수님
var numberOne: Double = 0
var numberTwo: Double = 0
var average: Double = 0

print("숫자 1을 입력하세요: ", terminator: "")
if let num1: String = readLine(),
    num1.isEmpty == false,
    let n1: Double = Double(num1) {
    numberOne = n1
} else {
    print("숫자 1을 잘못 입력했습니다.")
}
print("숫자 2를 입력하세요: ", terminator: "")
if let num2: String = readLine(),
    num2.isEmpty == false,
    let n2: Double = Double(num2) {
    numberTwo = n2
} else {
    print("숫자 2을 잘못 입력했습니다.")
}
average = (numberOne + numberTwo) / 2

print("두 수의 평균은 \(average)입니다.")
}


enum School { // School은 타입이름이기 때문에 대문자로 시작한다.
    case primary
    case elementary
    case middle
    case high
    case college
    case university
    case graduate
}


enum School {
    case primary, elementary, middle, high, college, university, graduate
}


var highestEducationLevel: School = School.university

highestEducationLevel: School = .university

highestEducationLevel = .graduate
//  값 변경


enum School: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestEducationLevel: School = School.university
print("저의 최종학력은 \(highestEducationLevel.rawValue) 졸업입니다.")

enum WeekDays: Character {
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: WeekDays = WeekDays.fri
print("오늘은 \(today)요일 입니다.") //오늘은 fri요일 입니다.
print("오늘은 \(today.rawValue)요일 입니다.") //오늘은 금요일 입니다.


enum School: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college
    case university
    case graduate
}

let highestEducationLevel: School = School.university
print("저의 최종학력은 \(highestEducationLevel.rawValue) 졸업입니다.")

print(School.elementary.rawValue)

enum Numbers: Int {
    case zero
    case one
    case two
    case ten = 10 // 10으로 출력 = 10을 안써주면 3으로 출력
} // 무조건 숫자는 0부터 출력 첫 case가 one이어도 0부터 출력

print("\(Numbers.zero.rawValue), \(Numbers.one.rawValue), \(Numbers.two.rawValue), \(Numbers.ten.rawValue)")



enum Menu: String {
    case 덧셈 = "1"
    case 뺄셈 = "2"
    case 종료 = "3"
}

print("메뉴를 입력하세요. 1. 덧셈 2. 뺄셈 3. 종료")
if let inputString: String = readLine(),
    inputString.isEmpty == false,
    let selectedMenu: Menu = Menu(rawValue: inputString) {
    switch selectedMenu {
    case Menu.덧셈:
        print("덧셈 메뉴 선택함")
    case Menu.뺄셈:
        print("뺄셈 메뉴 선택함")
    case Menu.종료:
        print("종료 메뉴 선택함")
}
    
} else {
print("입력이 잘못되었습니다.")
}


//Array
//var numbers: Array<Int> = [0, 1, 2]
var numbers: [Int] = [0, 1, 2] // 윗줄이랑 같은 의미
var emptyNumbers: [Int] = []
var names: [String] = ["JuHyeon", "YuJeong"]

// numbers의 요소 중에서 홀수를 찾아서 출력해봅니다.
for i in 0...numbers.count { // 배열의 크기 배열.count
    if (numbers[i] % 2 == 1) {
        print(numbers[i])
    }
}

// collection iteration
var numbers: Array<Int> = [0, 1, 2]
for item in numbers {
    if item % 2 == 1 {
        print(item)
    }
}

var names: [String] = ["JuHyeon", "YuJeong"]
for name in names {
    print(name)
}

 
var names: [String] = ["홍길동", "성춘향", "둘리", "뽀", "yagom", "lucky"]
// names 배열의 요소 중 3글자 이상인 요소를 출력해보세요.
for name in names {
    if name.count >= 3 {
        print(name)
    }
}


// String, Int, Double 타입을 갖는 튜플
var person: (name: String, age: Int, heigth: Double) = ("yagom", 100, 182.5)

// 요소 이름을 통해서 값을 빼 올 수 있습니다.
print("이름: \(person.name), 나이: \(person.age), 신장: \(person.heigth)")

person.age = 99
person.2 = 178.5

// 기존 인덱스를 이용하여 값을 빼 올 수도 있다.
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")


typealias PersonTuple = (name: String, age: Int, height: Double)

let yagom: PersonTuple = ("yagom", 100, 178.5)
let eric: PersonTuple = ("eric", 150, 183.5)

print("이름: \(yagom.0), 나이: \(yagom.1), 신장: \(yagom.2)")
print("이름: \(eric.0), 나이: \(eric.1), 신장: \(eric.2)")

// 대괄호를 사용하여 배열임을 표현한다.
//var names: Array<String> = ["yagom", "chulsoo", "younghee", "yagom"]

var names: [String] = ["yagom", "chulsoo", "younghee", "yagom", "JuHyeon", "YuJeong"]

//var emptyArray: [Any] = [Any]()
//var emptyArray: [Any] = Array<Any>()

var emptyArray: [Any] = []
print(emptyArray.isEmpty)
print(names.count)

print(names[2])
names[2] = "juhyeon"
print(names[2])
print(names[4])

names[4] = "elsa" //값을 갱신한다.
names.append("elsa") //값을 추가한다.
names.append(contentsOf: ["john", "max"]) //값을 추가한다.
names.insert("happy", at: 2) //값을 삽입한다.
names.insert(contentsOf: ["Jinhee", "minsoo"], at: 5)

print(names[4])
print(names.index(of: "yagom"))
print(names.index(of: "crystal"))
print(names.first)
print(names.last)

let firstItem: String = names.removeFirst()
let lastItem: String = names.removeLast()
let indexZeroItem: String = names.remove(at: 0)

print(firstItem)
print(lastItem)
print(indexZeroItem)
print(names[1...3])

// 나
var names: [String] = ["Mickey", "Donald", "Pororo", "yagom", "lucky"]
print("찾는 사람의 이름을 입력하세요: ", terminator: "")

if let findName: String = readLine(),
    findName.isEmpty == false {
    if names.index(of: findName) == nil {
        print("\(findName)은 없습니다.")
    } else {
        print("\(findName)는 \(names.index(of: findName))번째 친구입니다.")
    }
} else {
    print("입력값이 없습니다.")
}


// 교수님
var names: [String] = ["Mickey", "Donald", "Pororo", "yagom", "lucky"]
print("찾는 사람의 이름을 입력하세요: ", terminator: "")

if let findName: String = readLine(),
    findName.isEmpty == false {
    if let index: Int = names.index(of: findName) {
        print("\(findName)는 \(index)번째 친구입니다.")
    } else {
        print("\(findName)은 없습니다.")
    }
} else {
    print("입력값이 없습니다.")
}

// 내가 고친 것
var names: [String] = ["Mickey", "Donald", "Pororo", "yagom", "lucky"]
print("찾는 사람의 이름을 입력하세요: ", terminator: "")

if let findName: String = readLine(),
    findName.isEmpty == false {
    if let index: Int = names.index(of: findName){
        print("\(findName)는 \(index)번째 친구입니다.")
    } else {
        print("\(findName)은 없습니다.")
    }
} else {
    print("입력값이 없습니다.")
}
 */

