//
//  MainListView.swift
//  SwiftUIZoo
//
//  Created by zm on 2/23/21.
//

import SwiftUI

struct MainListView: View {
    var body: some View {
        NavigationView {
            List { // TODO - structure to handle the listing of all these things
                Section(header: Text("Images")) {
                    NavigationLink(destination: ImageTile()) {
                        MainListCell(title: "Image Tile", subtitle:"stretch and tiled images")
                    }
                    .listRowInsets(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .randomColorBackground()
                }
            }.navigationTitle(Text("The ZOO"))
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainListView()
        }
    }
}
