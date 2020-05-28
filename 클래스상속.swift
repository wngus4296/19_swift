//
//  main.swift
//  상속
//
//  Created by dm01 on 18/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation

// 클래스의 상속
class Person {
    var name: String = ""
    var age: Int = 0
    
    func eat(something: String) {
        print("\(something)을 먹습니다.")
    }
}

class Student: Person {
//   var name: String = "" -> 주석처리한 이유: Person클래스를 상속받으려고
//    var age: Int = 0 -> 주석처리한 이유: Person클래스를 상속받으려고
//    var school: String = ""
//    var grade: Int = 1
    func study(something: String) {
        print("\(name)은 \(something)을 공부합니다.")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    var credit: Double = 4.5
}


let 희진: Student = Student()
희진.eat(something: "풀떼기")
희진.study(something: "스위프트")

let 야곰: Person = Person()
야곰.eat(something: "빵")
//야곰.study(something: "스위프트") -> 야곰은 사람의 클래스만 가지고 있어서 공부를 할 수 없다.

// 부모, 자식 부모에게 상속을 받음으로 자식이 더 많은 것을 갖춤.
// 스위프트에서는 단일 상속밖에 되지 않음.
// 부모를 여러명 가질 수 없다. 자식에게는 하나의 부모만 있다.
// let ~: 클래스, 클래스 = 클래스, 클래스 불가 -> 부모가 여러명이기 때문에.

let 정빈: UniversityStudent = UniversityStudent()

func domSomething(공주: Student) {
    }

domSomething(공주: 희진) // 학생인 희진이는 들어올 수 있다.
//domSomething(공주: 야곰) // 들어올 수 없다.
domSomething(공주: 정빈) // 대학생이자 학생인 정빈이는 들어올 수 있다.

var 학생: Student = 정빈
학생 = 희진
// 학생 = 야곰 // 학생이 아닌 야곰은 들어올 수 없다.

var 대학생: UniversityStudent = 정빈
// 대학생 = 희진 // 희진이는 학생이지만 대학생이 아니므로 들어올 수 없다.


// 상속받을수록 세분화 된다. 즉, 자식이 구체적인 객체가 되는 셈.



// 여기부터 상속 실습!
// Animal 이라는 조상 클래스로부터 상속을 받아서 확장해봅니다.

class Animal {
    var isLiveInEarth: Bool = true
    var numberOfLegs: Int = 0
    var spiecename: String = ""
    
    func eat(something: String) {
        print("\(spiecename)은 \(something)을 먹습니다.")
    }
    
    func roaring(how: String) {
        print("\(spiecename)은 \(how)라고 웁니다.")
    }
    
    func hunting(something: String) {
        print("\(spiecename)은 \(something)을 사냥합니다.")
    }
    
    func sleeping() {
        print("\(spiecename)은 잡니다.")
    }
    
}


class 수중동물: Animal {
    var numberOfGill: Int = 0
    
    func swim() {
        print("\(spiecename)은 수영합니다.")
    }
}

class 육지동물: Animal {
    var isWalkWithTwoLegs: Bool = true
    
    func walk() {
        print("\(spiecename)은 걷습니다.")
    }
    
    func run() {
        print("\(spiecename)은 달립니다.")
    }
}

class 새: Animal {
    var numberOfWings: Int = 0
    
    func fly() {
        print("\(spiecename)은 날아다닙니다.")
    }
    func makehome() {
        print("\(spiecename)은 둥지를 짓습니다.")
    }
}

let 북극곰: 육지동물 = 육지동물()
let 참새: 새 = 새()
let 니모: 수중동물 = 수중동물()


