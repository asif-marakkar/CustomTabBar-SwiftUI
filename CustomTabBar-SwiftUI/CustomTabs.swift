//
//  CustomTabs.swift
//  CustomTabBar-SwiftUI
//
//  Created by ASIF on 21/06/22.
//

import SwiftUI

struct CustomTabs: View {
    @Binding var index: Int
    var body: some View {
        HStack {
            Button {
                self.index = 0
            } label: {
                Image(systemName: "house").imageScale(.large)
            }
            .foregroundColor(Color.black.opacity(self.index == 0 ? 1 : 0.2))
            Spacer()
            
            Button {
                self.index = 1
            } label: {
                Image(systemName: "magnifyingglass").imageScale(.large)
            }
            .foregroundColor(Color.black.opacity(self.index == 1 ? 1 : 0.2))
            .offset(x: 10)
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "plus.circle.fill").font(.system(size: 45, weight: .regular))
            }
            .foregroundColor(Color.purple)
            .offset(y: -25)
            Spacer()
            
            Button {
                self.index = 2
            } label: {
                Image(systemName: "play").imageScale(.large)
                    
            }
            .foregroundColor(Color.black.opacity(self.index == 2 ? 1 : 0.2))
            .offset(x: -10)
            Spacer()
            
            Button {
                self.index = 3
            } label: {
                Image(systemName: "person").imageScale(.large)
            }
            .foregroundColor(Color.black.opacity(self.index == 3 ? 1 : 0.2))
        }
        .padding(.horizontal, 35)
        .padding(.top, 35)
        .background(Color.white)
        .clipShape(CustomShape())
    }
}

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 35))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 35))
            path.addArc(center: .init(x: (rect.width / 2) + 6, y: 35), radius: 35, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            
        }
    }
}

struct CustomTabs_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabs(index: .constant(0))
    }
}
