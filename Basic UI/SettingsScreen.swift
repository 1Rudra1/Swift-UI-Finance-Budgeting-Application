//
//  StatsScreen.swift
//  Basic UI
//
//  Created by Rudra Patel on 12/14/21.
//

import SwiftUI

struct SettingsScreen: View {
    @StateObject var dm : dataModel
    @State var username: String = ""
    @State var balance: String = ""
    @State var goalBalance: String = ""
        @State var isPrivate: Bool = true
        @State var notificationsEnabled: Bool = false
        @State private var previewIndex = 0
       
        var previewOptions = ["Always", "When Unlocked", "Never"]

        var body: some View {
        
            NavigationView {
                Form {
                    Section(header: Text("PROFILE")) {
                        TextField("Username", text: $username, onCommit: {
                            dm.name = String(username)
                        })

                        TextField("Account Balance", text: $balance, onCommit: {
                            dm.money = Int(balance) ?? 0
                        })
                        
                        TextField("Goal Balance", text: $goalBalance, onCommit: {
                            dm.goal = Int(goalBalance) ?? 0
                        })
                    }
                    Section(header: Text("NOTIFICATIONS")) {
                        Toggle(isOn: $notificationsEnabled) {
                            Text("Enabled")
                        }
                        Picker(selection: $previewIndex, label: Text("Show Previews")) {
                            ForEach(0 ..< previewOptions.count) {
                                Text(self.previewOptions[$0])
                            }
                        }
                    }
                    
                    Section(header: Text("ABOUT")) {
                        HStack {
                            Text("Version")
                            Spacer()
                            Text("2.12")
                        }
                    }
                    
                    Section {
                        Button(action: {
                            print("Perform an action here...")
                        }) {
                            Text("Reset All Settings")
                        }
                    }
                }
                .navigationBarTitle("Profile Settings")
            }
        }
}
//
//struct StatsScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        StatsScreen()
//    }
//}
