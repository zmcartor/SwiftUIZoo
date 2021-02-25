//
//  RainbowNavListItem.swift
//  SwiftUIZoo
//
//  Created by zm on 2/24/21.
//

import SwiftUI

// This is a container to nest a class within Nav link, random color background, edge to edge
// Instead of writing navlink with all these modifier for every class I want to show, a reusable function that takes 'View' as a param
// must be done generically like this.

struct RainbowNavListItem<Content: View>: View {
    let content: Content
    let title: String
    let subtitle: String
    
    init(title: String, subtitle: String, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.title = title
        self.subtitle = subtitle
    }
    
    var body: some View {
        NavigationLink(destination: self.content) {
            MainListCell(title: title, subtitle:subtitle)
        }
        .listRowInsets(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        .randomColorBackground()
    }
}
