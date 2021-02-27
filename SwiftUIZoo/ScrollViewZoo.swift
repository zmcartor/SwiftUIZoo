//
//  ScrollView.swift
//  SwiftUIZoo
//
//  Created by zm on 2/27/21.
//

import SwiftUI

struct ScrollViewZoo: View {
    
    let colors :[Color] = [.red, .green, .blue]
    
    var body: some View {
       
        // Move the scrollView directaly to a certain item
        ScrollView(.vertical) {
            
            // ALL the content must be within the ScrollView reader
            // Does not work with Range List
            ScrollViewReader { reader in
                Button("Scroll To") {
                    reader.scrollTo(8, anchor: .top)
                }
                
                ForEach(0..<100) { i in
                    Text("Example \(i)")
                        .frame(width: 300, height: 300)
                        .background(colors[ i % colors.count])
                        .id(i) // manually set the id of the content
                }
            }
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewZoo()
    }
}
