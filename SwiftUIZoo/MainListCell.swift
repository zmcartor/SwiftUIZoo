//
//  MainListCell.swift
//  SwiftUIZoo
//
//  Created by zm on 2/23/21.
//

import SwiftUI

struct MainListCell: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.body)
                .fontWeight(.medium)
            Spacer()
        }.padding()
    }
}

struct MainListCell_Previews: PreviewProvider {
    static var previews: some View {
        MainListCell(title: "Good Night")
    }
}
