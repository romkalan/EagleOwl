//
//  EarsView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct EarsView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: size * 0.15, y: size * 0.15))
                path.addLine(to: CGPoint(x: middle - size * 0.1, y: size * 0.22))
                path.addLine(to: CGPoint(x: size * 0.23, y: size * 0.3))
            }
            .fill(Color(red: 0.2, green: 0.2, blue: 0.2))
            Path { path in
                path.move(to: CGPoint(x: size * 0.85, y: size * 0.15))
                path.addLine(to: CGPoint(x: middle + size * 0.1, y: size * 0.22))
                path.addLine(to: CGPoint(x: size * 0.77, y: size * 0.3))
            }
            .fill(Color(red: 0.2, green: 0.2, blue: 0.2))
        }
    }
}

struct EarsView_Previews: PreviewProvider {
    static var previews: some View {
        EarsView()
    }
}
