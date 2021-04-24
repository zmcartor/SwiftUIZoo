//
//  GestureZoo.swift
//  SwiftUIZoo
//
//  Created by zm on 4/21/21.
//

import SwiftUI

struct GestureTapZoo: View {
    var body: some View {
        
        VStack {
            Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
                .onTapGesture {
                    print("tapapapap")
                }
            
            Circle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
                .onTapGesture(count: 2) {
                    print("DOUBLE TAPPAPAP")
                }
        }
    }
}

struct GestureZoo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GestureTapZoo()
        }
    }
}
