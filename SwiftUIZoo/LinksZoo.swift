//
//  LinksZoo.swift
//  SwiftUIZoo
//
//  Created by zm on 3/21/21.
//

import SwiftUI

struct LinksZoo: View {
    
    // old openURL is within the environment now?
    // this dispatches to the appropriate systemService
    @Environment(\.openURL) var openURL
    
    var body: some View {
       
        VStack(spacing: 15) {
        Link("Order some hotdogs 🌭", destination: URL(string: "www.ballpark.com")!)
            .font(.headline)
            .foregroundColor(.orange)
        
        Link(destination: URL(string: "www.ameristop")!, label: {
                Image(systemName: "link.circle.fill")
                    .font(.largeTitle)
            })
            
        
        // old openURL also still works
            Button("Visit Apple") {
                openURL(URL(string: "https://apple.com")!)
            }
        }
    }
}

struct LinksZoo_Previews: PreviewProvider {
    static var previews: some View {
        LinksZoo()
    }
}
