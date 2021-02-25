//
//  SFSymbolStudy.swift
//  SwiftUIZoo
//
//  Created by zm on 2/24/21.
//

import SwiftUI

struct SFSymbolStudy: View {
    
    private var columns: [GridItem] = [
        GridItem(.fixed(75), spacing: 16),
        GridItem(.fixed(50), spacing: 50), // pushes cells away
        GridItem(.fixed(25), spacing: 16)
    ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: columns, alignment: .center, spacing: 12, pinnedViews: [.sectionHeaders]) {
                
                Section(header: Text("Speakers")) {
                    
                    // padding takes up more space within the fixed cell
                    
                    Image(systemName: "homepod.2.fill")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .padding()
                        .background(Color.green)
                    
                    Image(systemName: "hifispeaker")
                        .foregroundColor(.orange)
                        .font(.title)
                        .padding()
                        .background(Color.black)
                    
                    Image(systemName: "hifispeaker.2")
                        .foregroundColor(.yellow)
                        .font(.body)
                        .padding()
                        .background(Color.blue)
                }
                
                Section(header: Text("Devices")) {
                    Image(systemName: "lock.applewatch") //foreground color may not apply when render original
                        .renderingMode(.original)
                        .font(.body)
                        .foregroundColor(.green)
                    
                    Image(systemName: "exclamationmark.applewatch")
                        .renderingMode(.template)
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    
                    Image(systemName: "apps.ipad")
                        .font(.headline)
                }
            }
        }
    }
}

struct SFSymbolStudy_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolStudy()
    }
}
