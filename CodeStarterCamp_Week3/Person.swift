//
//  Person.swift
//  CodeStarterCamp_Week3
//
//  Created by 정선아 on 2022/04/27.
//

import Foundation

class Person {
    let name: String
    let age: Int
    var habit: String?
    var personalMBTI: String?
    var walletInCash: Int
    init(name: String, age: Int, habit: String? = nil, personalMBTI: String? = nil, walletInCash: Int) {
        self.name = name
        self.age = age
        self.habit = habit
        self.personalMBTI = personalMBTI
        self.walletInCash = walletInCash
    }
    
    func spandCash (amount: Int) {
        if isPayable(amount) == false {
            print("잔돈이 부족합니다.")
        } else {
            walletInCash -= amount
        }
    }
    
    func isPayable(_ amount: Int) -> Bool {
        if walletInCash > amount {
            return false
        } else {
            return true
        }
    }
    
    func buyCoffee(_ coffee: Coffee, at coffeeShop: CoffeeShop?) {
        if let cafe = coffeeShop {
            if let price = cafe.menu[coffee] {
                if walletInCash > price {
                    walletInCash -= price
                    print("\(coffee)를 구매하였습니다.")
                } else {
                    print("잔돈이 부족합니다.")
                }
            }
        }
    }
}

