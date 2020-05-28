//
//  main.swift
//  Dancer
//
//  Created by dm01 on 17/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation

enum Location {
    case center, right, left, rightBack, leftBack
}

enum Role {
    case mainDancer, leadDancer, subDancer
}

enum BackgroundColor {
    case no, tunnel, diamond, disco, firework, paint, rainbow, snow, space, sparkling, square, star
}

enum Dance {
    case clapping, dab, doubleDown, bodyRole, drop, star, zombie, poppin
}

enum Way {
    case no, right, left, up, down
}

enum Size {
    case fifty, sixty, seventy, eighty, ninty, hundred
}
class Dancer {
    var name: String
    var location: Location
    var role: Role
    var backgroundColor: BackgroundColor
    var size: Size
    
    init(name: String, location: Location, role: Role, backgroundColor: BackgroundColor, size: Size) {
        self.name = name
        self.location = location
        self.role = role
        self.backgroundColor = backgroundColor
        self.size = size
    }
    
    func introduce() {
        print("\(self.name)은 \(self.role)을 담당하며 크기는 \(self.size)입니다.")
    }
    
    func dancing(how: Dance, to: Way){
        print("\(self.role)인 \(self.name)이 \(to)방향으로 \(how)을 합니다.")
    }
    
    func change(when: Int, how: Dance, to: Way) {
        print("\(when)마디 이후부터 \(self.name)은 \(to)방향으로 \(how)를 합니다.")
    }
}

let yujeong: Dancer = Dancer(name: "유정", location: Location.center
    , role: Role.mainDancer, backgroundColor: BackgroundColor.firework, size: Size.seventy)
let soohyun: Dancer = Dancer(name: "수현", location: Location.left, role: Role.leadDancer, backgroundColor: BackgroundColor.firework, size: Size.fifty)
let heejin: Dancer = Dancer(name: "희진", location: Location.right, role: Role.leadDancer, backgroundColor: BackgroundColor.firework, size: Size.fifty)
let juhyeon: Dancer = Dancer(name: "주현", location: Location.rightBack, role: Role.subDancer, backgroundColor: BackgroundColor.firework, size: Size.fifty)
let younghyeon: Dancer = Dancer(name: "영현", location: Location.leftBack, role: Role.subDancer, backgroundColor: BackgroundColor.firework, size: Size.fifty)



class Stage {
    var colorTone: BackgroundColor = BackgroundColor.no
    var dancers: [Dancer] = []
    
    init(colorTone: BackgroundColor) {
        self.colorTone = colorTone
    }
}

let stage: Stage = Stage(colorTone: BackgroundColor.firework)

stage.dancers.append(yujeong)
stage.dancers.append(heejin)
stage.dancers.append(juhyeon)
stage.dancers.append(soohyun)
stage.dancers.append(younghyeon)

print("배경이 \(stage.colorTone)인 무대에는")
for dancer in stage.dancers {
    print("\(dancer.location)위치에 사이즈는 \(dancer.size)이고 역할은 \(dancer.role)인 \(dancer.name)이 있습니다.")
}

yujeong.dancing(how: Dance.poppin, to: Way.up)
yujeong.change(when: 5, how: Dance.zombie, to: Way.down)
soohyun.dancing(how: Dance.poppin, to: Way.up)
soohyun.change(when: 5, how: Dance.zombie, to: Way.down)
heejin.dancing(how: Dance.poppin, to: Way.up)
heejin.change(when: 5, how: Dance.zombie, to: Way.down)
juhyeon.dancing(how: Dance.poppin, to: Way.up)
juhyeon.change(when: 5, how: Dance.zombie, to: Way.down)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    wn)
younghyeon.dancing(how: Dance.poppin, to: Way.up)
younghyeon.change(when: 5, how: Dance.zombie, to: Way.down)

