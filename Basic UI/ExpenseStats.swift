//
//  ExpenseStats.swift
//  Basic UI
//
//  Created by Rudra Patel on 12/17/21.
//

import SwiftUI

struct ExpenseStats: View {
    @StateObject var dm : dataModel
    
    var body: some View {
        List{
            HStack{
                Text("Description: \(dm.des)")
                Text("Expense: $\(dm.expenseAmount)")
                Text("Category:  \(dm.category)")
            }
            .font(.system(size: 14))
        }
        .listStyle(InsetListStyle())
    }
}

//struct ExpenseStats_Previews: PreviewProvider {
//    static var previews: some View {
//        ExpenseStats()
//    }
//}
