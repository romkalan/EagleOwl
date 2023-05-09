//
//  BeakView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct BeakView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: middle, y: middle - size * 0.15))
                path.addLine(to: CGPoint(
                    x: middle + size * 0.05,
                    y: middle - nearLine)
                )
            }
            .fill(Color(red: 1, green: 0.8, blue: 0))
            Path { path in
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: middle, y: middle - size * 0.15))
                path.addLine(to: CGPoint(
                    x: middle - size * 0.05,
                    y: middle - nearLine)
                )
            }
            .fill(Color(red: 1, green: 0.7, blue: 0))
        }
    }
}

struct BeakView_Previews: PreviewProvider {
    static var previews: some View {
        BeakView()
            .frame(width: 400, height: 400)
    }
}
