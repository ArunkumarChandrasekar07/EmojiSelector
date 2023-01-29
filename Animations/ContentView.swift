//
//  ContentView.swift
//  Animations
//
//  Created by Arunkumar Chandrasekar on 24/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAnimation: Bool = false

    let inboundBubbleColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    let reactionsBGColor = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 28)
                .frame(width: 300, height: 50)
                .foregroundColor(Color.gray.opacity(0.5))
                .scaleEffect(showAnimation ? 1 : 0, anchor: .bottom)
                .animation(.interpolatingSpring(stiffness: 180, damping: 15).delay(0.05), value: showAnimation)
            
            HStack(spacing: 20) {
                Text("❤️")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .offset(x: showAnimation ? 0 : -15)
                    .scaleEffect(showAnimation ? 1 : 0, anchor: .bottom)
                    .animation(.interpolatingSpring(stiffness: 180, damping: 15).delay(0.1), value: showAnimation)
                
                Text("👍")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .offset(x: showAnimation ? 0 : -15)
                    .scaleEffect(showAnimation ? 1 : 0, anchor: .bottom)
                    .rotationEffect(.degrees(showAnimation ? 0 : -45))
                    .animation(.interpolatingSpring(stiffness: 180, damping: 15).delay(0.1), value: showAnimation)
                
                Text("👎")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .scaleEffect(showAnimation ? 1 : 0, anchor: .bottom)
                    .rotationEffect(.degrees(showAnimation ? 0 : -45))
                    .animation(.interpolatingSpring(stiffness: 180, damping: 15).delay(0.2), value: showAnimation)
                
                Text("😝")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .scaleEffect(showAnimation ? 1 : 0, anchor: .bottom)
                    .animation(.interpolatingSpring(stiffness: 180, damping: 15).delay(0.2), value: showAnimation)
                
                Text("😠")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .offset(x: showAnimation ? 0 : 15)
                    .scaleEffect(showAnimation ? 1 : 0, anchor: .bottom)
                    .animation(.interpolatingSpring(stiffness: 180, damping: 15).delay(0.3), value: showAnimation)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .overlay(alignment: .bottom) {
            Toggle("Show Reactions", isOn: $showAnimation)
                .padding(.horizontal, 15)
                .padding(.vertical, 15)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
