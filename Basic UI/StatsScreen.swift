//
//  StatsScreen.swift
//  Basic UI
//
//  Created by Rudra Patel on 12/17/21.
//

import SwiftUI

struct StatsScreen: View {
    @StateObject var dm : dataModel
    
    var body: some View {
               NavigationView(){
                       VStack {
                           HStack{
                               Text("Details")
                                   .font(.system(size: 45))
                                   .font(.callout).foregroundColor(.black)
                                   .italic()
                                   .underline()
                                   
                           }
                          .position(x: 195, y: -50)
                           

                           NavigationLink(
                            destination: EarningStats(dm:dm),
                               label: {
                                   Text("Earning Details")
                                       .font(.system(size: 45))
                                       .font(.callout).foregroundColor(.white)
                                       .fontWeight(.bold)
                                       .italic()
                                   Image(systemName: "rosette")
                                       .resizable()
                                          .frame(width: 36.0, height: 42.0)
                                       .foregroundColor(.black)
                                   
                               }).frame(width: 400, height: 300).background(Color.gray).position(x: 190, y: 0)
                           
                           
                           Spacer()
                           
                               
                           NavigationLink(
                               destination: ExpenseStats(dm:dm),
                               label: {
                                   Text("Expense Details")
                                       .font(.system(size: 45))
                                       .font(.callout).foregroundColor(.white)
                                       .fontWeight(.bold)
                                       .italic()
                                   Image(systemName: "rosette")
                                       .resizable()
                                       .frame(width: 36.0, height: 42.0)
                                       .foregroundColor(.gray)

                               }).frame(width: 400, height: 300).background(Color.black)
                               
                           Spacer()
                       }
                       .font(.custom("SFProText-Bold", size: 50))
               }
        
        
        
        
        }
}

//struct StatsScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        StatsScreen()
//    }
//}
