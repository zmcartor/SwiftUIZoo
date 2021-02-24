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
            List {
                Section(header: Text("Images")) {
                    NavigationLink(destination: ImageZoo()) {
                    MainListCell(title: "Image Zoo")
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
