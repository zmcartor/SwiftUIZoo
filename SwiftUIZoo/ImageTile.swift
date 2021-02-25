//
//  ImageZoo.swift
//  SwiftUIZoo
//
//  Created by zm on 2/23/21.
//

import SwiftUI

struct ImageTile: View {
    var body: some View {
        
        VStack{
            Text("Strega")
                .font(.headline)
                .fontWeight(.black)
                .kerning(20)
            
            Image("strega")
                
            Divider()
            
            Text("Alchemy")
                .font(.callout)
                .fontWeight(.ultraLight)
                .kerning(30)
    
            Image("strega")
                // stretch the litteral hell outta it
                .resizable(capInsets: EdgeInsets(top: 3, leading: 4, bottom: 114, trailing: 5), resizingMode: .stretch)
            Divider()
            Image("strega")
                // tile and fill the entire space
                .resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0), resizingMode: .tile)
            
        }
    }
}

struct ImageZoo_Previews: PreviewProvider {
    static var previews: some View {
        ImageTile()
    }
}
