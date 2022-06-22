//
//  FloatingTabs.swift
//  CustomTabBar-SwiftUI
//
//  Created by ASIF on 22/06/22.
//

import SwiftUI

struct FloatingTabs: View {
    @State var isSelected = 0
    @State var isExpanded = false
    
    var body: some View {
        HStack {
            Spacer()
            HStack {
                if !self.isExpanded {
                    Button {
                        self.isExpanded.toggle()
                    } label: {
                        Image(systemName: "arrow.left.circle").imageScale(.large).foregroundColor(.black).padding(.horizontal)
                    }

                } else {
                    Button {
                        self.isSelected = 0
                    } label: {
                        Image(systemName: "hand.thumbsup.fill").imageScale(.large).foregroundColor(self.isSelected == 0 ? .red : .gray).padding(.horizontal)
                    }
                    Spacer(minLength: 15)
                    
                    Button {
                        self.isSelected = 1
                    } label: {
                        Image(systemName: "heart.fill").imageScale(.large).foregroundColor(self.isSelected == 1 ? .purple : .gray).padding(.horizontal)
                    }
                    Spacer(minLength: 15)
                    
                    Button {
                        self.isSelected = 2
                    } label: {
                        Image(systemName: "message.fill").imageScale(.large).foregroundColor(self.isSelected == 2 ? .yellow : .gray).padding(.horizontal)
                    }
                }
            }
            .padding(.vertical, self.isExpanded ? 20 : 8)
            .padding(.horizontal, self.isExpanded ? 30 : 8)
            .background(Color.white)
            .clipShape(Capsule())
            .padding(20)
            .onLongPressGesture {
                self.isExpanded.toggle()
            }
            .animation(.interactiveSpring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.5), value: self.isExpanded)
        }
    }
}

struct FloatingTabs_Previews: PreviewProvider {
    static var previews: some View {
        FloatingTabs()
    }
}
