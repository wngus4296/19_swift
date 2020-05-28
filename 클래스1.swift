//
//  main.swift
//  7-15
//
//  Created by dm01 on 15/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation
//
//
//enum Gender {
//    case male, female
//}
//
//// 사람 유형 - 클래스
//// Person Type - Class
//class Person { // 타입 이름은 대문자로 시작
//    // 특성 - 변수
//    var name: String = "JuHyeon"
//    var age: Int = 19
//    var gender: Gender = Gender.female
//    var height: Double = 160
//
//    // 기능 - 함수
//    func introduceSelf() {
//        print("제 이름은 \(self.name)이고, \(self.age)살입니다.")
//    }
//
//    func walk(to: String) {
//        print("\(self.name)이가 \(to)로 걸어갑니다.")
//    }
//
//    func talk(with: Person) {
//        print("\(self.name)이가 \(with.name)이랑 말을 합니다.")
//    }
//}
//
//let JuHyeon: Person = Person() // 괄호 열고 닫아야 생성됨.
//
//// 점표기법
//JuHyeon.name = "YuJeong"
//JuHyeon.age = 20
//
//let you: Person = Person()
//you.name = "Soo Hyun"
//you.age = 20
//you.walk(to: "남문")
//
//enum Color {
//    case red, green, blue, black
//}
//
//enum Fuel {
//    case gas, disel, lpg, electric
//}
//
//class Car {
//    var color: Color = Color.red
//    var fuel: Fuel = Fuel.gas
//
//    func advance() {
//        print("전진합니다.")
//    }
//
//    func reverse() {
//        print("후진합니다.")
//    }
//}
//
//let yujeongCar: Car = Car()
//yujeongCar.color = Color.red
//yujeongCar.fuel = Fuel.electric
//
//let juhyeonCar: Car = Car()
//
//let heejinCar: Car = Car()
//
//
//let soohyunCar: Car = Car()
//
//
//let younghyeon: Car = Car()
//


class Ticket {
    var seatInformation: String = ""
    var title: String = ""
    var money: Int = 0
    var paymentInformation: String = ""
    
    func selectTicket() {
        print("\(self.title)이 선택되었습니다. \(self.money)원을 넣어주세요")
    }
    func insertMoney(money: Int) {
        self.money = money
        print("\(money)원이 입력되었습니다. 티켓을 발권중입니다.")
    }
}

var aladdin: Ticket = Ticket()
aladdin.title = "알라딘"
aladdin.money = 10000

aladdin.selectTicket()
aladdin.insertMoney(money: 1000)
