//
//  main.swift
//  7-9
//
//  Created by dm01 on 09/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation

/*
var a: String? = "JuHyeon"
a = nil // nil을 쓸 때, 옵셔널이용. ? 안붙이면 오류난다.

// 옵셔널 값의 강제 추출
var myName: String? = "JuHyeon"

var JuHyeon: String = myName!

myName = nil
// JuHyeon = myName! // 런타임 오류

if myName != nil{
    print("My name is \(myName!)")
} else{
    print("myName == nil")
}
// myName ==  nil

var dlfma: String? = "JuHyeon"

// 옵셔널 바인딩(if let)을 통한 임시 상수 할당
if let name = dlfma{
    print("My name is \(name)")
} else {
    print("myname == nil")
}
// My name is JuHyeon

// 옵셔널 바인딩(if let)을 통한 임시 변수 할당
if var name = dlfma{
    name = "wizplan" // 변수이므로 내부에서 변경 가능
    print("my name is \(name)")
} else {
    print("myName == nil")
}
// My name is wizplan
*/

/*
var myName: String? = "JuHyeon"
var yourName: String? = nil

// friend에 바인딩 되지 않으므로 실행되지 않습니다.
if let name = myName, let friend = yourName {
    print("We are friend!")
}

yourName = "YuJeong"

if let name = myName, let friend = yourName {

var myName: String! = "JuHyeon"
print(myName)
myName = nil

// 암시적 추출 옵셔널도 옵셔널이므로 당연히 바인딩을 사용할 수 있습니다.
if var name = myName {
    print("My name is \(name)")
} else {
    print("myName == nil")
}
// myName == nil

myName.isEmpty // 오류!

// Optional
// 있을지도 모르고 없을지도 모른다
var normalVariable: Int = 100
var optionalVariable: Int? = 100


normalVariable = optionalVariable! // 옵셔널을 넣는건 불가능. 강제추출 사용
optionalVariable = normalVariable // 옵셔널에 넣는건 가능 Y? 옵셔널이 더 큰 범위이다.

// if let
// optionalVariable에 값이 있으면 unwrapped라는 상수에 복사해온다.
// optionalVariable에 값이 없으면 if 구문은 실행되지 않는다.
if let unwrapped: Int = optionalVariable {
    normalVariable = unwrapped
}

if let unwrapped: Int = optionalVariable {
    optionalVariable = unwrapped + 10
}

var someString: String = "1"
// var converted: Int? = Int(someString) // var converted: Int = Int(someString) 안됨

// Int(someString)의 결과가 성공적이라면 converted에 값을 넣어 실행합니다.
if let converted: Int = Int(someString) {
    print("숫자 변환에 성공하였습니다. \(converted)")
}

someString = "A"
if let converted: Int = Int(someString) {
    print("숫자 변환에 성공하였습니다.\(converted)")
} else {
    print("숫자 변환에 실패하였습니다. 실패한 문자열 : \(someString)")
}

var age: Int = 20

if age >= 0 && age <= 100 {
    print("사람입니다.")
} else {
    print("나이가 이상합니다.")
}

switch age {
case 0...100:
    print("사람입니다.")
default:
    print("나이가 이상합니다.")
}

// age에 따라서 나이대가 어떻게 되는지 출력해봅니다.
// 10대: "10대 입니다.", 20대: "20대 입니다.", 30대 이상: "아재입니다."
// 0대: "애기네요", 그 외: "사람입니까?"

if age >= 0 && age <= 9 {
    print("애기네요")
} else if age >= 10 && age <= 19 {
    print("10대 입니다.")
} else if age >= 20 && age <= 29 {
    print("20대 입니다.")
} else if age >= 30 {
    print("아재입니다.")
} else {
    print("사람입니까?")
}

if age >= 30 {
    print("아재입니다.")
} else if age >= 20 {
    print("20대 입니다.")
} else if age >= 10 {
    print("10대 입니다.")
} else if age >= 0 {
    print("애기네요")
} else {
    print("사람입니까?")
}

switch age {
case 0...9:
    print("애기네요")
case 10...19:
    print("10대 입니다.")
case 20...29:
    print("20대 입니다.")
case 30...:
    print("아재입니다.")
default:
    print("사람입니까?")
}

var num: Int = 682

if num >= 100 {
    print("100 이상입니다.")
}  else {
    print("100 이하입니다.")
}

switch num {
case 100...:
    print("100 이상입니다.")
default:
    print("100 이하입니다.")
}
// switch문에서 default 항상 있어야 한다.

let first: Int = 5
let second: Int = 7

if first > second {
    print("first > second")
} else if first < second {
    print("first < second")
} else {
    print("first == second")
}
//결과는 "first < second"가 출력됩니다.


let first: Int = 5
let second: Int = 4
var biggerValue: Int = 0

if first > second { // 조건 수식을 소괄호로 묶어주는 것은 선택 사항입니다.
    biggerValue = first
} else if first == second {
    biggerValue = second
} else if first < second {
    biggerValue = second
} else if first == 5 {
//  조건을 충족하더라도 이미 first == second라는 조건을 충족해 위에서 실행되었습니다.
// 따라서 실행되지 않습니다.
    biggerValue = 100
}
// 마지막 else는 생략 가능합니다. 물론 else if도 생략 가능합니다.
// 즉, else나 else if 없이 if만 단독으로 사용할 수도 있습니다.

print(biggerValue) //5

let first: Int = 5
let second: Int = 5
var biggerValue: Int = 0

if (first > second) {
    biggerValue = first
} else if (first == second) {
    biggerValue = first
} else if (first < second) {
    biggerValue = second
} else if (first == 5) {
    // 조건을 충족하더라도 이미 first == second라는 조건을 충족해서 위에서 실행되었습니다.
    //  따라서 실행되지 않습니다.
    biggerValue = 100
}

print(biggerValue)


let integerValue: Int = 5

switch integerValue {
case 0:
    print("Value == zero")
case 1...10:
    print("Value == 1~10")
    fallthrough
case Int.min..<0,101..<Int.max:
    print("Value < 0 or Value > 100")
    break
default:
    print("10 < Value <= 100")
}

// 결과
// Value == 1~10
// Value < 0 or Value > 100


let doubleValue: Double = 3.0

switch doubleValue {
case 0:
    print("Value == zero")
case 1.5...10.5:
    print("1.5 <= Value <= 10.5")
default:
    print("Value == \(doubleValue)")
}

//1.5 <= Value <= 10.5
 

let stringValue: String = "Liam Neeson"

switch stringValue {
case "yagom":
    print("He is yagom")
case "Jay":
    print("He is Jay")
case "Jenny", "Joker", "Nova":
    print("He or She is \(stringValue)")
default:
    print("\(stringValue) said 'I don't know who you are'")
}

// Liam Neeson said 'I don't know who you are'
 
 
let stringValue: String = "Liam Neeson"

switch stringValue {
case "yagom":
    print("He is yagom")
case "Jay":
    print("He is Jay")
case "Jenny":
    // stringValue가 "Jenny"에 해당할 때 실행될 코드가 와야 합니다.
*/

