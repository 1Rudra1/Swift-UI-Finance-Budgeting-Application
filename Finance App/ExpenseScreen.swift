//
//  ExpenseScreen.swift
//  Basic UI
//
//  Created by Rudra Patel on 12/15/21.
//

import SwiftUI

struct ExpenseScreen: View {
    @StateObject var dm : dataModel
    @State private var expenseAmount: String = ""
    @State private var description: String = ""
    @State private var selectorIndex = -1
    @State private var selectorIndex2 = -1
    @State private var showingAlert = false
    @State private var strOS = ["Food", "Clothes","Entertainment"]
    @State private var strOS2 = ["Technology", "Appliances","Other"]
    
    var body: some View {
        ZStack{
            HStack{
                Text("Expense")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .underline()
            }
            .position(x: 180, y: 110)

            VStack(spacing:40){
                Picker("Numbers", selection: $selectorIndex) {
                    ForEach(0 ..< strOS.count) { index in
                        Text(self.strOS[index]).tag(index)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                Picker("Numbers", selection: $selectorIndex2) {
                    ForEach(0 ..< strOS2.count) { index in
                        Text(self.strOS2[index]).tag(index)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
            }
            .position(x: 180, y: 240)
            
            VStack(spacing:35){

                TextField(" Enter Expense", text: $expenseAmount,onCommit: {
                    dm.expenseAmount = Int(expenseAmount) ?? 0
                    dm.money = dm.money-dm.expenseAmount
                })
                    .frame(width: 250, height: 40, alignment: .center)
                    .border(Color.blue, width: 3)
                    .background(.white)
                
                
                Text("$ \(expenseAmount)")
                    .background(.yellow)
                
                TextField(" Enter Description", text: $description, onCommit: {
                    dm.des = String(description)
                })
                    .frame(width: 250, height: 40, alignment: .center)
                    .border(Color.blue, width: 3)
                    .background(.white)

                Text((description))
                    .background(.yellow)

                Divider()
            }
            .position(x: 180, y: 480)
        
            HStack{
                
                Button(action: {
                    dm.category = String(strOS[selectorIndex])
                    showingAlert = true
                    
                })
                {
                    HStack {
                        Image(systemName: "checkmark")
                            .font(.title)
                        Text("Save")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(40)
                    
                }
                .alert(isPresented: $showingAlert) {
                           Alert(title: Text("Data Saved"), message: Text("Go Check Your Stats"), dismissButton: .default(Text("Ok")))
                       }
                
            }.position(x: 180, y: 680)
            
        }.padding().frame(height: 900).background(Color.brown)
    }
    
}

//struct ExpenseScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        ExpenseScreen()
//    }
//}
