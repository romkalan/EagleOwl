//
//  MonocleView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct MonocleView: View {
    var owlIsFlying: Bool
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let nearLine = size * 0.001
            
            Image(systemName: "poweroff")
                .resizable()
                .foregroundColor(Color("brownMonocle"))
                .scaleEffect(x: nearLine / 2.5, y: nearLine / 2.5)
                .offset(x: -size / 8, y: -size / 8)
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(Color("brownMonocle"))
                .scaleEffect(x: nearLine / 15, y: nearLine / 15)
                .offset(x: owlIsFlying ? -size / 5.7 : -size / 5.3, y: -size / 15)
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(Color("brownMonocle"))
                .scaleEffect(x: nearLine / 15, y: nearLine / 15)
                .offset(x: owlIsFlying ? -size / 5.9 : -size / 5.1, y: -size / 23)
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(Color("brownMonocle"))
                .scaleEffect(x: nearLine / 15, y: nearLine / 15)
                .offset(x: owlIsFlying ? -size / 6.1 : -size / 4.8, y: -size / 46)
        }
        
    }
}

struct MonocleView_Previews: PreviewProvider {
    static var previews: some View {
        MonocleView(owlIsFlying: false)
            .frame(width: 400, height: 400)
    }
}
