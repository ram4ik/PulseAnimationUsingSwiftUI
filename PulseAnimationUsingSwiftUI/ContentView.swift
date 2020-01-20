//
//  ContentView.swift
//  PulseAnimationUsingSwiftUI
//
//  Created by ramil on 20.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Loading()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Loading: View {
    @State private var animate = false
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.purple.opacity(0.25))
                .frame(width: 350, height: 350)
                .scaleEffect(self.animate ? 1 : 0)
            
            Circle()
                .fill(Color.purple.opacity(0.55))
                .frame(width: 250, height: 250)
                .scaleEffect(self.animate ? 1 : 0)
            
            Circle()
                .fill(Color.purple.opacity(0.75))
                .frame(width: 150, height: 150)
                .scaleEffect(self.animate ? 1 : 0)
            
            Circle()
                .frame(width: 50, height: 50)
                .scaleEffect(self.animate ? 1 : 0)
        }.onAppear {
            self.animate.toggle()
        }.animation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false))
    }
}
