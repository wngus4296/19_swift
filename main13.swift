//
//  main.swift
//  MyFirstSwift
//
//  Created by dm01 on 08/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation

var greeting: String = "hello"
print(greeting)
greeting = "hi"
print(greeting)

//let name = "JuHyeon"
//dump(name)
// - "JuHyeon"로 출력
//print(name)
// JuHyeon으로 출력

//let pi = 3.141592
//var age: UInt = 20
//UInt는 더 많은 양수 표현 가능
//Double > Float
//DataType 바꿀 때, Int()
//Char이랑 String 둘 다 "" 사용
//String 여러줄 문자열 저장 """ (c++ 에서의 \n)
//Bool (true/false) 0,1 사용 불가6

struct BasicInformation{
    let name: String
    var age: Int
}

var yagomInfo: BasicInformation = BasicInformation(name: "yagom", age: 99)

class Person{
    var height: Float = 0.0
    var weight: Float = 0.0
}

let yagom: Person = Person()
yagom.height = 182.5
yagom.weight = 78.5

print(yagomInfo) // BasicInformation(name: "yagom", age: 99)
dump(yagomInfo)
/*
 BasicInformation
 - name: "yagom"
 - age: 99
 */

print(yagom) //Person

dump(yagom)

//print("My name is \(name)") //문자열 보간법

// 오류 타입의 열거형
// - noName: 이름을 전달받지 못했을 때의 오류

// ---  문단 바꿈
// *A pair of marks*  텍스트 기울이기
// __Two pair of marks__
//[Swift Blog](http://~)

var name: String = "JuHyeon"
var age: Int = 19
var job = "IOS Programmer"
var height = 160
// print("\(type(of: height))")
age = 20
job = "Writer"
print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 비밀이지만, 키는 \(height)센티미터 입니다.")

print("Int 최댓값: \(Int.max), Int 최솟값: \(Int.min)")
print("Int 최댓값: \(UInt.max), Int 최솟값: \(UInt.min)")

var integer: Int = -100
let unsignedInteger: UInt = 50 //UInt값에는 음수를 할당하지 못한다.

integer = Int(unsignedInteger) //DataType 항상 바꿔주어야 한다. Int와 UInt 데이터 유형을 다르게 인식하기 때문.
print(integer)

let decimalInteger: Int = 28
let binaryInteger: Int = 0b11100 // 2진수로 10진수 28을 표현합니다.
let octalInteger: Int = 0o34 // 8진수로 10진수 28을 표현합니다.
let hexadecimalInteger: Int = 0x1C // 16진수로 10진수 28을 표현합니다.
print(decimalInteger) //28
print(binaryInteger) //28
print(octalInteger) //28
print(hexadecimalInteger) //28

let boolean: Bool = true
let iLoveYou: Bool = true
let isTimeUnlimited: Bool = false
print("시간은 무한합니까?: \(isTimeUnlimited)") // 스위프트 bool형에서는 0,1 존재하지 않는다.

//Float이 수용할 수 있는 범위를 넘어선다.
//자신이 감당할 수 있는 만큼만 남기므로 정확도가 떨어진다.
var floatValue: Float = 1234567890.1

//Double은 충분히 수용할 수 있다.
let doubleValue: Double = 1234567890.1

print("floatValue: \(floatValue) doubleValue: \(doubleValue)")
//Float이 수용할 수 있는 범위의 수로 변경한다.
floatValue = 123456.1

//문자열 보간법을 사용하지 않고 단순히 변수 또는 상수의 값만 보고 싶으면
//print 함수의 전달인자로 변수 또는 상수만 전달하면 된다.
print(floatValue)





