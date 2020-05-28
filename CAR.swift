//
//  main.swift
//  7-17
//
//  Created by dm01 on 17/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation

class Car {
    var speed: Int = 0
    var gas: Int = 15
    
    func changeSpeed(up: Bool) {
        gas -= 1
        if up == true {
            speed += 10
            print("속도를 10증가하고 연료가 1감소합니다.")
            print("현재 속도는 \(self.speed)이고, 남은 연료는 \(self.gas)입니다.")
            if gas < 0 {
                speed = 0
            }
        } else {
            speed -= 10
            print("속도를 10감소하고 연료가 1감소합니다.")
            print("현재 속도는 \(self.speed)이고, 남은 연료는 \(self.gas)입니다.")
            if gas < 0 {
                speed = 0
            }
        }
        if speed > 100 {
            speed -= 10
            print("속도가 100을 초과하였기 때문에 속도를 10줄이고 연료가 1감소합니다.")
            print("현재 속도는 \(self.speed)이고, 남은 연료는 \(self.gas)입니다.")
        }
    }
}

let automatic: Car = Car()
print("자율주행을 시작합니다. 현재 속도는 \(automatic.speed)이고, 연료는 \(automatic.gas)입니다.")

while automatic.gas > 0 {
    automatic.changeSpeed(up: true)
}

print("연료가 없어 속도가 0이 되었습니다. 자율주행을 종료합니다.")
