//
//  UpDownManager.swift
//  UpDownGame
//
//  Created by 오정석 on 30/11/2023.
//

import Foundation
struct UpDownManager {
    
    private var comNumebr = Int.random(in: 1...10)
    
    private var myNumber: Int = 1
    
    mutating func resetNum() {
        comNumebr = Int.random(in: 1...10)
        myNumber = 1
    }
    
    mutating func setUsersNum(num: Int) {
        myNumber = num
    }
    
    func getUpDownResult() -> String {
        
        
        
        if comNumebr > myNumber {
            return "UP"
        } else if comNumebr < myNumber {
            return "DOWN"
        } else {
            return "BINGO🥳"
        }
        
    }
    
}
