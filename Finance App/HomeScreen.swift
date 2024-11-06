//
//  HomeScreen.swift
//  Basic UI
//
//  Created by Rudra Patel on 12/16/21.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject var dm : dataModel
    @State var progressValue: Float = 0.0
    
    var body: some View {
        
        ZStack {
            Color.yellow
                .opacity(0.1)
                .edgesIgnoringSafeArea(.all)
         
            
            HStack{
                Text("Hello, \(dm.name)!")
                    .font(.system(size: 35))
            }
            .position(x: 205, y: 40)
            
            HStack{
                Text("Last Expense")
                    .font(.system(size: 15))
                    .underline()
            }
            .position(x: 205, y: 130)
            
         
    
            List {
                HStack{
                    Text("Description: \(dm.des)")
                    Text("Expense: $\(dm.expenseAmount)")
                    Text("Category:  \(dm.category)")
                }
                   }
            .listStyle(PlainListStyle())
            .frame(width: 350, height: 100)
            .position(x: 200, y: 200)
            
        
            
            VStack {
                ProgressBar(progress: self.$progressValue)
                    .frame(width: 150.0, height: 150.0)
                    .padding(40.0)
                
                Button(action: {
                    self.incrementProgress()
                }) {
                    HStack {
                        Image(systemName: "plus.rectangle.fill")
                        Text("Update")
                    }
                    .padding(15.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15.0)
                            .stroke(lineWidth: 2.0)
                    )
                }
                
                Spacer()
            }
            .position(x: 200, y: 550)
            
            HStack{
                Text("Account Balance: $\(dm.money)")
                    .font(.system(size: 25))
            }
            .position(x: 205, y: 570)
            
            HStack{
                Text("Goal Balance: $\(dm.goal)")
                    .font(.system(size: 25))
            }
            .position(x: 205, y: 650)
        }
       
    }
    
    func incrementProgress() {
        let money = Float(dm.money)
        let goal = Float(dm.goal)
        self.progressValue += money/goal
    }
    
}

struct ProgressBar: View {
    @Binding var progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20.0)
                .opacity(0.3)
                .foregroundColor(Color.red)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.red)
                .rotationEffect(Angle(degrees: 270.0))
//                .animation(.linear)

            Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
                .font(.largeTitle)
                .bold()
        }
    }
}
    

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(dm: dataModel(expenseAmount:10))
    }
}
