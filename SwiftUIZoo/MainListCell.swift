//
//  MainListCell.swift
//  SwiftUIZoo
//
//  Created by zm on 2/23/21.
//

import SwiftUI

struct MainListCell: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
            Text(title)
                .font(.body)
                .fontWeight(.medium)
            
            Text(subtitle)
                .font(.subheadline)
                .fontWeight(.light)
            }
            Spacer()
        }.padding()
    }
}

struct MainListCell_Previews: PreviewProvider {
    static var previews: some View {
        MainListCell(title: "Good Night", subtitle: "moon")
    }
}
