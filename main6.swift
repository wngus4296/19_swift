//
//  main.swift
//  7-16
//
//  Created by dm01 on 16/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation

enum Color {
    case blue, pink, red, green, yellow
}

enum Direction {
    case right, left
}
class Portal {
    var number: Int = 0
    var color: Color = Color.blue
    var isActive: Bool = true

    init(number: Int, color: Color, isActive: Bool) {
        self.number = number
        self.color = color
        self.isActive = isActive
    }
    
    func move(who: Expert, to: Portal) {
        print("\(who.name)을 포털\(to.number)로 이동합니다.")
    }
}

class Expert {
    var name: String = "Expert"
    
    init(name: String) {
        self.name = "Expert"
    }
    
    func moveForward() {
        print("\(self.name)이 앞으로 한 칸 이동합니다.")
    }
    
    func turnLeft(to: Direction) {
        print("\(to)쪽으로 회전합니다.")
    }
    
    func getGem() {
        print("보석을 수집합니다.")
    }
    
    func turnPortal(which: Portal, status: Bool){
        print("포털\(which.number)의 활성상태를 \(status)로 변경했습니다.")
    }
}

let redPortal: Portal = Portal(number: 1, color: Color.red, isActive: true)
//redPortal.color = Color.red
//redPortal.number = 1
//redPortal.isActive = true

let bluePortal: Portal = Portal(number: 2, color: Color.blue, isActive: true)
//bluePortal.color = Color.blue
//bluePortal.number = 2
//bluePortal.isActive = true

let byte: Expert = Expert(name: "Byte")
byte.name = "Byte"
byte.moveForward()
byte.moveForward()
byte.turnLeft(to: Direction.right)
byte.moveForward()
byte.turnPortal(which: redPortal, status: false)
byte.moveForward()
bluePortal.move(who: byte, to: redPortal)

class Nation {
    var population: Int
    var name: String
    var language: String
    
    init(population: Int, name: String, language: [String]){
        self.population = population
        self.name = name
        self.language = "Korea"
    }
    
    func war(with: Nation) {
        print("\(self.name)는 \(with.name)과 전쟁을 합니다.")
    }
    
    func commerce(with: Nation) {
        print("\(self.name)는 \(with.name)과 무역을 합니다.")
    }
}

let korea: Nation = Nation(population: 50000000, name: "Korea", language: ["Korean"])
let america: Nation = Nation(population: 330000000, name: "America", language: ["English"])
let canada: Nation = Nation(population: 380000000, name: "Canada", language: ["English", "French"])

korea.war(with: canada)

enum Flavor: String {
    case strawberry, chocolate, banana, coffee, vanilla
}
class Milk {
    var flavor: Flavor
    var capacity: Int
    
    init(flavor: Flavor, capacity: Int){
        self.flavor = flavor
        self.capacity = capacity
    }
    
    func makeIcecream() {
        print("주문한 \(self.flavor)맛 아이스크림 \(self.capacity)ml 나왔습니다.")
    }
}

let strawberry: Milk = Milk(flavor: Flavor.strawberry, capacity: 800)
let chocolate: Milk = Milk(flavor: Flavor.chocolate, capacity: 1000)
let banana: Milk = Milk(flavor: Flavor.banana, capacity: 500)
strawberry.makeIcecream()
chocolate.makeIcecream()
banana.makeIcecream()


