//
//  GradientText.swift
//  SampleSwiftUIApp
//
//  Created by Azizbek Ismailov on 05.10.2022.
//

import SwiftUI

struct GradientText: View {
    var text: String = "Some text"

    var body: some View {
        Text(text)
            .gradientForeground(colors: [Color("pink-gradient-1"), Color("pink-gradient-2")])
    }
}

extension View {
    public func gradientForeground(colors:[Color]) -> some View {
        self.overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
}
