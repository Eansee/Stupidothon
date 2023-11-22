//
//  ContentView.swift
//  Stupidathon
//
//  Created by Koh Ean See on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") private
    var isDark = false
    var body: some View {
        VStack {
            
            Toggle("Turn on dark mode", isOn: $isDark)
                .padding(.horizontal)
                .onChange(of: isDark) { newValue in
                    print("Dark mode is \(newValue ? "on" : "off")")
                }
                    
                .preferredColorScheme(isDark ? .dark: .light)
            Spacer()
            
            TabView {
                infoView()
                    .tabItem {
                        VStack {
                            Image(systemName: "folder.fill")
                            Text("Info")
                        }
                    }
                 PrimaryView()
                    .tabItem {
                        VStack {
                            Image(systemName: "person.fill")
                            Text("TBD")
                        }
                    }
                 SecondaryView()
                    .tabItem{
                        VStack {
                            Image(systemName: "tray.fill")
                            Text("TBD")
                         }
                    }
                }
            
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
