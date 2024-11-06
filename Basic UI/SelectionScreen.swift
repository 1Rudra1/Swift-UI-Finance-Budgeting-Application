//
//  SelectionScreen.swift
//  Basic UI
//
//  Created by Rudra Patel on 12/15/21.
//

import SwiftUI

struct SelectionScreen: View {
    @StateObject var dm : dataModel
    var body: some View {
 
        NavigationView(){
                VStack {
                    HStack{
                        Text("Input Screen")
                            .font(.system(size: 45))
                            .font(.callout).foregroundColor(.cyan)
                            .italic()
                            .underline()
                            
                    }
                   .position(x: 195, y: -50)
                    

                    NavigationLink(
                        destination: EarningScreen(dm:dm),
                        label: {
                            Text("Earnings")
                                .font(.system(size: 45))
                                .font(.callout).foregroundColor(.black)
                                .fontWeight(.bold)
                                .italic()
                            Image(systemName: "hands.sparkles.fill")
                                .resizable()
                                   .frame(width: 52.0, height: 52.0)
                                .foregroundColor(.black)
                            
                        }).frame(width: 400, height: 300).background(Color.green).position(x: 190, y: 0)
                    
                    
                    Spacer()
                    
                        
                    NavigationLink(
                        destination: ExpenseScreen(dm:dm),
                        label: {
                            Text("Expenses")
                                .font(.system(size: 45))
                                .font(.callout).foregroundColor(.black)
                                .fontWeight(.bold)
                                .italic()
                            Image(systemName: "hand.thumbsdown.fill")
                                .resizable()
                                .frame(width: 42.0, height: 42.0)
                                .foregroundColor(.black)

                        }).frame(width: 400, height: 300).background(Color.orange)
                        
                    Spacer()
                }
                .font(.custom("SFProText-Bold", size: 50))
            
    }
        

}
        
}

//struct SelectionScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SelectionScreen()
//    }
//}
