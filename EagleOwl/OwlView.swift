//
//  OwlView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct OwlView: View {
    var owlIsBreathing: Bool
    
    var body: some View {
        GeometryReader { geometry in
            WingsView(owlIsBreathing: owlIsBreathing)
            BodyView()
            HeadView()
        }
    }
}

struct OwlView_Previews: PreviewProvider {
    static var previews: some View {
        OwlView(owlIsBreathing: false)
            .frame(width: 400, height: 400)
    }
}
