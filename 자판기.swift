//
//  main.swift
//  자판기
//
//  Created by dm01 on 17/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import Foundation

class Product {
    var name: String
    var price: Int
    var stock: Int
    init(name: String, price: Int, stock: Int) {
        self.name = name
        self.price = price
        self.stock = stock
    }
}

var cash: Int = 0
//typealias Product = (name: String, price: Int, stock: Int)

// 상품, 가격 추가
var coke: Product = Product(name: "콜라", price: 500, stock: 1)
var milk: Product = Product(name: "우유", price: 300, stock: 2)//("우유", 300, 2)
var coffee: Product = Product(name: "커피", price: 250, stock: 1)//("커피", 250, 1)

func giveProduct(what: Product) {
    if what.stock > 0 && cash >= what.price {
        what.stock -= 1
        cash -= what.price
        print("\(what.name)를 내어드립니다. \(what.name) 재고는 \(what.stock)개, 잔액은 \(cash)입니다.")
    } else {
        print("잔액이 부족하거나 \(what.name) 재고가 모자랍니다.")
    }
    
}
print("자판기가 실행되었습니다.")
while true {
    print("원하는 메뉴를 고르세요.\n1. 돈 추가\n2. 남은 돈 돌려받고 종료\n3. 콜라\n4. 우유\n5. 커피")
    print("메뉴를 입력: ", terminator: "")
    if let menu: String = readLine() {
        if let menu: Int = Int(menu) {
            switch menu {
            case 1:
                print("추가할 돈을 입력하세요: ", terminator: "")
                if let money: String = readLine() {
                    if let money: Int = Int(money) {
                        cash += money
                        print("현재 잔액은 \(cash)입니다.")
                    } else {
                        print("돈 입력이 잘못되었습니다.")
                    }
                } else {
                    print("돈 입력이 잘못되었습니다.")
                }
                
            case 2:
                print("\(cash)를 반환하였습니다. 자판기를 종료합니다.")
                exit(0)
                
            case 3:
                giveProduct(what: coke)
                
            case 4:
                giveProduct(what: milk)
                
            case 5:
                giveProduct(what: coffee)
                
            default:
                print("메뉴 입력이 잘못되었습니다.")
            }
        } else {
            print("메뉴 입력이 잘못되었습니다.")
        }
    }
}

