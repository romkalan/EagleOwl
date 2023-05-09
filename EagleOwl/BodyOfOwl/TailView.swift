//
//  TailView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct TailView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let nearLine2 = size * 0.2
            let farLine = size * 0.8
            
            Path { path in
                path.move(to: CGPoint(x: nearLine2, y: middle + nearLine))
                path.addLine(to: CGPoint(x: middle, y: size))
                path.addLine(to: CGPoint(x: farLine, y: middle + nearLine))
            }
            .fill(Color(red: 0.7, green: 0.7, blue: 0.7))
            Path { path in
                path.move(to: CGPoint(x: middle, y: size))
                path.addLine(to: CGPoint(x: middle, y: farLine))
                path.addLine(to: CGPoint(x: middle + size * 0.05, y: size - size * 0.07))
            }
            .fill(Color("darkGrayOwl"))
            Path { path in
                path.move(to: CGPoint(x: middle, y: size))
                path.addLine(to: CGPoint(x: middle, y: farLine))
                path.addLine(to: CGPoint(x: middle - size * 0.05, y: size - size * 0.07))
            }
            .fill(Color("darkGrayOwl"))
        }
    }
}

struct TailView_Previews: PreviewProvider {
    static var previews: some View {
        TailView()
            .frame(width: 400, height: 400)
    }
}
