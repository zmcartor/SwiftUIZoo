//
//  MainListView.swift
//  SwiftUIZoo
//
//  Created by zm on 2/23/21.
//

import SwiftUI

// TODO write a random color modifier
//.background(Color(colors.randomElement()!))
// private let colors: [UIColor] = [.systemRed, .systemOrange, .systemBlue, .systemYellow, .systemPink, .systemGreen]

struct MainListView: View {
    var body: some View {
        NavigationView {
            List { // TODO - structure to handle the listing of all these things
                Section(header: Text("Images")) {
                    MainListCell(title: "Image Tile", subtitle:"stretch and tiled images")
                    NavigationLink(destination: ImageTile()) {
                    }
                }
            }.navigationTitle(Text("The ZOO"))
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
    }
}
