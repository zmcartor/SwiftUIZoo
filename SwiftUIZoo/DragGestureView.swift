//
//  DragGesture.swift
//  SwiftUIZoo
//
//  Created by zm on 4/24/21.
//

import SwiftUI

struct DragGestureView: View {
    
    @State private var dragOffset = CGSize.zero
    
    var body: some View {
        
        VStack {
            Image("strega")
                .offset(dragOffset)
                
                // This uses the more complex gesture(..) modifier that accepts multiple gestures and their callbacks
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            dragOffset = gesture.translation
                        }
                        .onEnded { gesture in
                            dragOffset = .zero
                        }
                )
        }
    }
}

struct DragGesture_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
