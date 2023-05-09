//
//  HeadView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct HeadView: View {
    var owlIsFlying: Bool
    var owlIsBlinking: Bool
    
    var body: some View {
        GeometryReader { geometry in
            EyesView(owlIsBlinking: owlIsBlinking)
            EarsView()
            ForeheadView()
            BeakView()
            MonocleView(owlIsFlying: owlIsFlying)
        }
    }
}

struct HeadView_Previews: PreviewProvider {
    static var previews: some View {
        HeadView(owlIsFlying: false, owlIsBlinking: false)
            .frame(width: 400, height: 400)
    }
}
