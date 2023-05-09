//
//  BodyView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct BodyView: View {
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let nearLine2 = size * 0.2
            let farLine = size * 0.9
            let farLine2 = size * 0.8
            
            Path { path in
                path.move(to: CGPoint(x: nearLine2, y: nearLine2))
                path.addLine(to: CGPoint(x: nearLine2, y: farLine2))
                path.addLine(to: CGPoint(x: farLine2, y: farLine2))
                path.addLine(to: CGPoint(x: farLine2, y: nearLine2))
            }
            .fill(Color("grayOwl"))
            
            TailView()
            
            Path { path in
                path.move(to: CGPoint(x: nearLine2, y: middle))
                path.addLine(to: CGPoint(x: nearLine2, y: farLine))
                path.addLine(to: CGPoint(x: middle, y: farLine2))
                path.addLine(to: CGPoint(x: farLine2, y: farLine))
                path.addLine(to: CGPoint(x: farLine2, y: middle))
            }
            .fill(Color("grayOwl"))
            Path { path in
                path.move(to: CGPoint(x: nearLine2, y: middle))
                path.addLine(to: CGPoint(x: middle, y: middle - nearLine))
                path.addLine(to: CGPoint(x: middle, y: farLine2))
            }
            .fill(Color(red: 0.95, green: 0.95, blue: 0.95))
            Path { path in
                path.move(to: CGPoint(x: farLine2, y: middle))
                path.addLine(to: CGPoint(x: middle, y: middle - nearLine))
                path.addLine(to: CGPoint(x: middle, y: farLine2))
            }
            .fill(Color(red: 0.99, green: 0.99, blue: 0.99))
        }
    }
}

struct BodyView_Previews: PreviewProvider {
    static var previews: some View {
        BodyView()
            .frame(width: 400, height: 400)
    }
}
