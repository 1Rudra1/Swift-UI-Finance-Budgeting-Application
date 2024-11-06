//
//  ContentView.swift
//  Basic UI
//
//  Created by Rudra Patel on 12/2/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var dm = dataModel(expenseAmount:10)

       var body: some View {
           
                   TabView {
                       HomeScreen(dm:dm)
                           .tabItem {
                           Image(systemName: "house")
                           Text("Home")
                       }
                       
                       StatsScreen(dm:dm)
                           .tabItem {
                           Image(systemName: "waveform.path.ecg.rectangle")
                           Text("Details")
                       }
                
                       SelectionScreen(dm:dm)
                           .tabItem {
                               Image(systemName: "dollarsign.circle.fill")
                               Text("Input")
                           }
                       
                       SettingsScreen(dm:dm)
                           .tabItem {
                               Image(systemName: "gearshape.fill")
                               Text("Settings")
                           }
                       
                       
                   }
                   .accentColor(Color.blue)
                  
               
               
       }
   
    
}
       





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
