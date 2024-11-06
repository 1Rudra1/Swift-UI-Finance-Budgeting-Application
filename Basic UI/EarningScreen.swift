//
//  InputScreen.swift
//  Basic UI
//
//  Created by Rudra Patel on 12/15/21.
//

import SwiftUI

struct EarningScreen: View {
    @StateObject var dm : dataModel
    @State private var earningAmount: String = ""
    @State private var description: String = ""
    @State private var selectorIndex = -1
    @State private var selectorIndex2 = -1
    @State private var strOS = ["Food", "Clothes","Entertainment"]
    @State private var strOS2 = ["Technology", "Appliances","Other"]
    
    
    var body: some View {
        ZStack{
               
            HStack{

                Text("Earning")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .underline()
            }
            .position(x: 180, y: 110)

            
            
            VStack(spacing:55){

//                Text("Selected value is: \(strOS[selectorIndex])")
//                    .font(.system(size: 25))
//                    .italic()

                TextField(" Enter Earning", text: $earningAmount,onCommit: {
                    dm.earningAmount = Int(earningAmount) ?? 0
                    dm.money = dm.money+dm.earningAmount
                })
                    .frame(width: 250, height: 40, alignment: .center)
                    .border(Color.blue, width: 3)
                    .background(.white)
                
                
                Text("$ \(earningAmount)")
                    .background(.yellow)
                
                TextField(" Enter Description", text: $description, onCommit: {
                    dm.earningDes = String(description)
                })
                    .frame(width: 250, height: 40, alignment: .center)
                    .border(Color.blue, width: 3)
                    .background(.white)

                Text("Description\(description)")
                    .background(.yellow)

                Divider()
            }
            
        
            HStack{
                    Button(action: {
                           print("WOW")
                        
                            }) {

                            Text("Done!")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 140, height: 50)
                                .background(Color(red: 85.0/255.0, green: 84.0/255.0, blue: 166.0/255.0, opacity: 1.0))
                                .clipped()
                                .cornerRadius(5.0)
                                .shadow(color: Color(red: 85.0/255.0, green: 84.0/255.0, blue: 166.0/255.0, opacity: 1.0), radius: 5, x: 0, y: 5)
                            }
                
            }.position(x: 180, y: 680)
            
        }.padding().frame(height: 900).background(Color.green)
    
        
  
    }
}

//struct InputScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        EarningScreen()
//    }
//}
