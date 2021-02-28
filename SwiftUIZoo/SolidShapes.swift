//
//  SolidShapes.swift
//  SwiftUIZoo
//
//  Created by zm on 2/25/21.
//

import SwiftUI

struct SolidShapes: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 12, content: {
            
            Button {
                print("Tappy")
            } label: {
                Image(systemName: "homepod")
                Text("Press me")
                    .padding(20)
            }
            .contentShape(Rectangle())

            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 50)
                .border(Color.green, width: 10)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.red)
                .frame(width: 150, height: 80)
            
            HStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 150, height: 30)
                
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .trailing, endPoint: .leading))
                    .frame(width: 150, height: 30)
            }
            
            // Trim only draws part of a shape
            Circle()
                .trim(from:0, to:0.5)
                .frame(width: 200, height: 200)
                .offset(x: 0, y: -50)
        })
    }
}

struct SolidShapes_Previews: PreviewProvider {
    static var previews: some View {
        SolidShapes()
    }
}
