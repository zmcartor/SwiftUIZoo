//
//  GestureChain.swift
//  SwiftUIZoo
//
//  Created by zm on 4/24/21.
//

import SwiftUI

struct GestureChain: View {
    @State private var message = "hidden gesture"
    
    var body: some View {
        
        VStack {
        let longPress = LongPressGesture()
            .onEnded { _ in
                message = "one step there..."
            }
        let drag = DragGesture()
            .onChanged({ (_) in
                message = "Dragging, good..."
            })
            .onEnded { _ in
                message = "Unlocked"
            }
        
        let combined = longPress.sequenced(before: drag)
        
        Circle().fill(Color.red)
            .frame(width: 200, height: 200)
            .gesture(combined)
        
        Text(message)
        }
    }
}

struct GestureChain_Previews: PreviewProvider {
    static var previews: some View {
        GestureChain()
    }
}
