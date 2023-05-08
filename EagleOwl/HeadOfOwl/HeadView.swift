//
//  HeadView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct HeadView: View {
    var body: some View {
        GeometryReader { _ in
            EyesView()
            EarsView()
            ForeheadView()
            BeakView()
            MonocleView()
        }
    }
}

struct HeadView_Previews: PreviewProvider {
    static var previews: some View {
        HeadView()
            .frame(width: 400, height: 400)
    }
}
