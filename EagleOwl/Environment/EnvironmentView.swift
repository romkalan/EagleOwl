//
//  EnvironmentView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 09.05.2023.
//

import SwiftUI

struct EnvironmentView: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea().opacity(0.33)
            ForestView()
        }
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}
