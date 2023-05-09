//
//  WingsView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct WingsView: View {
    var owlIsFlying: Bool
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let nearLine2 = size * 0.25
            let farLine = size * 0.9
            let farLine2 = size * 0.75
            
            Path { path in
                path.move(to: CGPoint(x: nearLine2, y: middle))
                path.addLine(to: CGPoint(x: farLine2, y: middle))
                path.addLine(to: CGPoint(x: farLine, y: farLine2))
                path.addLine(to: CGPoint(x: nearLine, y: farLine2))
            }
            .fill(Color("middleGrayOwl"))
            .scaleEffect(owlIsFlying ? 1.1 : 1)
        }
    }

}

struct WingsView_Previews: PreviewProvider {
    static var previews: some View {
        WingsView(owlIsFlying: false)
            .frame(width: 400, height: 400)
    }
}
