//
//  SliderControlZoo.swift
//  SwiftUIZoo
//
//  Created by zm on 3/20/21.
//

import SwiftUI

struct SliderControlZoo: View {
    @State private var thing: Double = 0
    
    var body: some View {
        
        VStack {
            Text("Thing label is now \(thing)")
            Slider(value: $thing, in: 1...100,
                   minimumValueLabel: Text("1"), maximumValueLabel: Text("100"), label: { Text("Thing Slider") })
        }.padding([.leading, .trailing], 20)
    }
}

struct SliderControlZoo_Previews: PreviewProvider {
    static var previews: some View {
        SliderControlZoo()
    }
}
