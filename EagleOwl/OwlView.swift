//
//  OwlView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct OwlView: View {
    var owlIsFlying: Bool
    var owlIsBlinking: Bool
    
    var body: some View {
        GeometryReader { geometry in
            WingsView(owlIsFlying: owlIsFlying)
            BodyView()
            HeadView(owlIsFlying: owlIsFlying, owlIsBlinking: owlIsBlinking)
        }
    }
}

struct OwlView_Previews: PreviewProvider {
    static var previews: some View {
        OwlView(owlIsFlying: false, owlIsBlinking: false)
            .frame(width: 400, height: 400)
    }
}
