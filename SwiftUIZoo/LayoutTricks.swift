//
//  LayoutTricks.swift
//  SwiftUIZoo
//
//  Created by zm on 2/26/21.
//

import SwiftUI

struct LayoutTricks: View {
    var body: some View {
        VStack {
            // slice of pizza gets offered the space first.
            // hotdog gets what is left over.
            HStack {
                Text("Hello there would you like a hotdog?")
                Text("Hello there how about a slice of pizza?")
                    .layoutPriority(1)
            }
            
            // Both buttons have the same width
            VStack {
               Button("Log in") { }
                  .foregroundColor(.white)
                  .padding()
                  .frame(maxWidth: .infinity)
                  .background(Color.blue)
                  .clipShape(Capsule())
               Button("Reset Password") { }
                  .foregroundColor(.white)
                  .padding()
                  .frame(maxWidth: .infinity)
                  .background(Color.blue)
                  .clipShape(Capsule())
            }
            .fixedSize(horizontal: true, vertical: false)
            
        }
    }
}

struct LayoutTricks_Previews: PreviewProvider {
    static var previews: some View {
        LayoutTricks()
    }
}
