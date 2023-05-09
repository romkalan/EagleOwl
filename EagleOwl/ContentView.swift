//
//  ContentView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var owlIsFlying = false
    @State private var owlIsBlinking = false
    
    var body: some View {
        ZStack {
            Image("фон")
                .scaledToFill()
                .padding(.bottom, 50)
            OwlView(owlIsFlying: owlIsFlying, owlIsBlinking: owlIsBlinking)
                .frame(width: 400, height: 400)
                .offset(x: 0, y: owlIsFlying ? 20 : 10)
        }
        .onAppear {
            withAnimation(
                .easeInOut(duration: 1)
                .repeatForever(autoreverses: true)
                .delay(0.1)
            ) {
                owlIsFlying.toggle()
            }
            withAnimation(
                .easeInOut(duration: 2)
                .repeatForever(autoreverses: true)
                .delay(5)
            ) {
                owlIsBlinking.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
