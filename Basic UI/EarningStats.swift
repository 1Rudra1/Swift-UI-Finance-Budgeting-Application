//
//  EarningStats.swift
//  Basic UI
//
//  Created by Rudra Patel on 12/17/21.
//

import SwiftUI


struct EarningStats: View {
    
    @StateObject var dm : dataModel

    var body: some View {
        List{
            HStack{
                Text("Description: \(dm.earningDes)")
                Text("Expense: $\(dm.earningAmount)")
            }
            .font(.system(size: 20))
        }
        .listStyle(InsetListStyle())
    }
    
    
    
}

//
//struct EarningStats_Previews: PreviewProvider {
//    static var previews: some View {
//        EarningStats()
//    }
//}
