//
//  RandomColorModifier.swift
//  SwiftUIZoo
//
//  Created by zm on 2/24/21.
//

import Foundation
import SwiftUI

struct RandomColor : ViewModifier {
    
    private let colors: [UIColor] = [.systemRed, .systemOrange, .systemBlue, .systemYellow, .systemPink, .systemGreen, .systemPurple, .systemIndigo]
    
    func body(content: Self.Content) -> some View {
        content.background(Color(colors.randomElement()!))
    }
}

extension View {
    func randomColorBackground() -> some View {
        self.modifier(RandomColor())
    }
}
