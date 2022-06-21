//
//  ContentView.swift
//  CustomTabBar-SwiftUI
//
//  Created by ASIF on 21/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                switch index {
                case 0:
                    Text("Home")
                case 1:
                    Text("Search")
                case 2:
                    Text("Play")
                case 3:
                    Text("Profile")
                default:
                    Text("No Selection")
                }
                Color.black.opacity(0.05).edgesIgnoringSafeArea(.top)
            }
            .padding(.bottom, -35)
            CustomTabs(index: $index)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
