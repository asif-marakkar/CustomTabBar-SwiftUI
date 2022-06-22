//
//  ContentView.swift
//  CustomTabBar-SwiftUI
//
//  Created by ASIF on 21/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            GeometryReader { _ in
                
            }.background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
            
            FloatingTabs()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
