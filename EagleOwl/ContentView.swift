//
//  ContentView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var owlIsBreathing = false
    
    var body: some View {
        VStack {
//            EnvironmentView()
            Button("Start") {
                buttonAction()
            }
            OwlView(owlIsBreathing: owlIsBreathing)
                .frame(width: 400, height: 400)
                .padding(.top, 100)
        }
    }
    
    func buttonAction() {
        withAnimation(
            .easeInOut(duration: 1)
            .repeatForever(autoreverses: true)
            .delay(0.1)
        ) {
            owlIsBreathing.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
