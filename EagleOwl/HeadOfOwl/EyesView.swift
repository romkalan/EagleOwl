//
//  EyesView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct EyesView: View {
    var owlIsBlinking: Bool
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let nearLine = size * 0.01
            
            //MARK: - right eye
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(.yellow)
                .opacity(0.3)
                .scaleEffect(x: nearLine / 40, y: nearLine / 40)
                .offset(x: size / 8, y: -size / 8)
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(.black)
                .opacity(0.8)
                .scaleEffect(x: nearLine / 60, y: nearLine / 60)
                .offset(x: size / 8, y: -size / 8)
            
            //MARK: - left eye
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(.yellow)
                .opacity(0.3)
                .scaleEffect(x: nearLine / 30, y: nearLine / 30)
                .offset(x: -size / 8, y: -size / 8)
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(.black)
                .opacity(0.8)
                .scaleEffect(x: nearLine / 40, y: nearLine / 40)
                .offset(x: size / -8, y: -size / 8)
            
            //MARK: - right eyelid
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(Color("eyelidColor"))
                .scaleEffect(x: nearLine / 30, y: nearLine / 30)
                .offset(x: -size / 8, y: owlIsBlinking ? -size / 7.5 : -size / 4.5)
        }
    }
}

struct EyesView_Previews: PreviewProvider {
    static var previews: some View {
        EyesView(owlIsBlinking: false)
            .frame(width: 400, height: 400)
    }
}
