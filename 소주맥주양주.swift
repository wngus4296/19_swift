//
//  main.swift
//  소주맥주양주
//
//  Created by dm01 on 09/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation

var soju: Int = 0
var macju: Int = 0
var yangju: Int = 0
var money: Int = 0

money = 678182

while money >= 3000 {
switch money {
    case 9000...:
        yangju += 1
        money -= 9000
    case 5000..<9000:
        macju += 1
        money -= 5000
    case 3000..<5000:
        soju += 1
        money -= 3000
    default:
        break
    }
}

print("소주: \(soju), 맥주: \(macju), 양주: \(yangju), 남은 돈: \(money)")

