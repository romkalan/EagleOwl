//
//  ForeheadView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct ForeheadView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let nearLine2 = size * 0.2
            let farLine2 = size * 0.8
            
            Path { path in
                path.move(to: CGPoint(x: middle - nearLine, y: nearLine2))
                path.addLine(to: CGPoint(x: middle, y: nearLine2))
                path.addLine(to: CGPoint(x: middle, y: middle - nearLine))
                path.addLine(to: CGPoint(x: nearLine2, y: nearLine2 + nearLine))
            }
            .fill(Color(red: 0.6, green: 0.6, blue: 0.6))
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine, y: nearLine2))
                path.addLine(to: CGPoint(x: middle, y: nearLine2))
                path.addLine(to: CGPoint(x: middle, y: middle - nearLine))
                path.addLine(to: CGPoint(x: farLine2, y: nearLine2 + nearLine))
            }
            .fill(Color(red: 0.75, green: 0.75, blue: 0.75))
        }
    }
}

struct ForeheadView_Previews: PreviewProvider {
    static var previews: some View {
        ForeheadView()
            .frame(width: 400, height: 400)
    }
}
