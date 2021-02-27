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
                Section(header: Text("Images 🎑")) {
                    
                    RainbowNavListItem(title: "Image Tile", subtitle: "Stretch and tiled images") {
                        ImageTile()
                    }
                    
                    RainbowNavListItem(title: "SF Symbols", subtitle:"build in system symbols for every occasion") {
                        SFSymbolStudy()
                    }
                }
                
                Section(header: Text("Drawing Things 🔺🟩🟠")) {
                    RainbowNavListItem(title: "Gradient", subtitle:"Text with different gradient backgrounds") {
                        GradientView()
                    }
                    
                    RainbowNavListItem(title: "Shapes", subtitle:"Drawing solid shapes with colors fit for small kids") {
                        SolidShapes()
                    }
                }
                
                Section(header: Text("Layout Process ✎ 📄")){
                    RainbowNavListItem(title: "Layout Tricks", subtitle:"Make views the same size") {
                        LayoutTricks()
                    }
                    
                    RainbowNavListItem(title: "Layout Tricks", subtitle:"Make views the same size") {
                        ScrollViewZoo()
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
