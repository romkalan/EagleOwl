//
//  ForestView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 09.05.2023.
//

import SwiftUI

struct ForestView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let minSize = min(width, height)
            let minMiddle = minSize / 2
            let minNearLine = minSize * 0.1
            let minNearLine2 = minSize * 0.25
            let minFarLine = minSize * 0.9
            let minFarLine2 = minSize * 0.75
            
            let maxSize = max(width, height)
            let maxMiddle = maxSize / 2
            let maxNearLine = maxSize * 0.1
            let maxNearLine2 = maxSize * 0.25
            
            //MARK: - Trees
            Path { path in
                path.move(to: CGPoint(
                    x: minNearLine,
                    y: maxSize + minNearLine2
                ))
                path.addLine(to: CGPoint(
                    x: minMiddle - minNearLine,
                    y: maxMiddle - maxNearLine
                ))
                path.addLine(to: CGPoint(
                    x: minFarLine2,
                    y: maxSize + minNearLine2
                ))
            }
            .fill(Color("darkGreen"))
            
            Path { path in
                path.move(to: CGPoint(
                    x: minFarLine2,
                    y: maxSize + minNearLine2
                ))
                path.addLine(to: CGPoint(
                    x: minFarLine,
                    y: maxMiddle - maxNearLine
                ))
                path.addLine(to: CGPoint(
                    x: minSize + minNearLine,
                    y: maxSize + minNearLine2
                ))
            }
            .fill(Color("darkGreen"))
            
            Path { path in
                path.move(to: CGPoint(
                    x: -minNearLine2,
                    y: maxSize + maxNearLine2
                ))
                path.addLine(to: CGPoint(
                    x: minNearLine,
                    y: maxMiddle - maxNearLine
                ))
                path.addLine(to: CGPoint(
                    x: minMiddle - minNearLine,
                    y: maxSize + maxNearLine2
                ))
            }
            .fill(Color("lightGreen"))
            
            Path { path in
                path.move(to: CGPoint(
                    x: minMiddle,
                    y: maxSize + maxNearLine2
                ))
                path.addLine(to: CGPoint(
                    x: minFarLine2,
                    y: maxMiddle - maxNearLine
                ))
                path.addLine(to: CGPoint(
                    x: minSize,
                    y: maxSize + maxNearLine2
                ))
            }
            .fill(Color("lightGreen"))
            
            //MARK: - Fog
            Path { path in
                path.move(to: CGPoint(x: 0, y: minMiddle - minNearLine2))
                path.addLine(to: CGPoint(x: minSize, y: minMiddle - minNearLine))
                path.addLine(to: CGPoint(x: 0, y: minMiddle - minNearLine))
            }
            .fill(Color(.white).opacity(0.3))
            Path { path in
                path.move(to: CGPoint(x: minSize, y: maxMiddle))
                path.addLine(to: CGPoint(x: 0, y: maxMiddle + minNearLine))
                path.addLine(to: CGPoint(x: minSize, y: maxMiddle + minNearLine))
            }
            .fill(Color(.white).opacity(0.3))
        }
    }
}

struct ForestView_Previews: PreviewProvider {
    static var previews: some View {
        ForestView()
    }
}
