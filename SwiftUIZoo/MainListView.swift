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
                    
                    RainbowNavListItem(title: "Image Tile", subtitle: "Stretch and tiled images") {
                        ImageTile()
                    }
                    
                    RainbowNavListItem(title: "SF Symbols", subtitle:"build in system symbols for every occasion") {
                        SFSymbolStudy()
                    }
                }
                
                Section(header: Text("Drawing Things")) {
                    RainbowNavListItem(title: "Gradient", subtitle:"Text with different gradient backgrounds") {
                        GradientView()
                    }
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
