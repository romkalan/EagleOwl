//
//  EnvironmentView.swift
//  EagleOwl
//
//  Created by Roman Lantsov on 08.05.2023.
//

import SwiftUI

struct EnvironmentView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
                .opacity(0.9)
            VStack {
                HStack {
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "sparkles")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "sparkles")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "sparkles")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                        }
                        HStack {
                            Image(systemName: "sparkles")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "sparkles")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "sparkles")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            Image(systemName: "sparkles")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "sparkles")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "sparkles")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                        }
                    }
                    Image(systemName: "moon.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.yellow)
                        .padding()
                }
                HStack {
                    Image(systemName: "cloud.fill")
                        .resizable()
                        .frame(width: 80, height: 50)
                        .foregroundColor(.blue)
                    Image(systemName: "sparkles")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Image(systemName: "cloud.fill")
                        .resizable()
                        .frame(width: 80, height: 50)
                        .foregroundColor(.blue)
                    Image(systemName: "sparkles")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Image(systemName: "cloud.fill")
                        .resizable()
                        .frame(width: 80, height: 50)
                        .foregroundColor(.blue)
                }
                HStack {
                    Image(systemName: "sparkles")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Image(systemName: "cloud.fill")
                        .resizable()
                        .frame(width: 80, height: 50)
                        .foregroundColor(.blue)
                    Image(systemName: "sparkles")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Image(systemName: "cloud.fill")
                        .resizable()
                        .frame(width: 80, height: 50)
                        .foregroundColor(.blue)
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}
