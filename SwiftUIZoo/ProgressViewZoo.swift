//
//  ProgressViewZoo.swift
//  SwiftUIZoo
//
//  Created by zm on 3/21/21.
//

import SwiftUI

struct ProgressViewZoo: View {
    
    @State private var downloadAmount = 0.0
    
    let timer = Timer.publish(every: 0.1, on: .main,
    in: .common).autoconnect()

    var body: some View {
        VStack(spacing: 12) {
            ProgressView("Downloading...", value: downloadAmount, total: 100)
            ProgressView("Not Sure.. Progress View")
        }.onReceive(timer, perform: { _ in
            if downloadAmount < 100 {
                downloadAmount += 2
            }
            
            
            
        })
    }
}

struct ProgressViewZoo_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewZoo()
    }
}
