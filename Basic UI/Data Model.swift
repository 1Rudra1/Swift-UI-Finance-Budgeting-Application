//
//  Data Model.swift
//  Basic UI
//
//  Created by Rudra Patel on 12/16/21.
//

import Foundation

class dataModel : ObservableObject{
    @Published var expenseAmount : Int
    @Published var money : Int = 0
    @Published var goal : Int = 1000
    @Published var des : String = "NA"
    @Published var name : String = "User"
    @Published var category : String = "NA"
    @Published var earningAmount : Int = 0
    @Published var earningDes : String = "NA"
    init(expenseAmount:Int){
        self.expenseAmount = expenseAmount
        self.des = des
        self.money = money
        self.name = name
        self.goal = goal
        self.category = category
        self.earningAmount = earningAmount
        self.earningDes = earningDes
    }
    
  
}



