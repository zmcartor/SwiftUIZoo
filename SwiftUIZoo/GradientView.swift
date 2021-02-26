//
//  GradientView.swift
//  SwiftUIZoo
//
//  Created by zm on 2/25/21.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        
        VStack {
            
            Text("Radical Man")
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.orange, .blue, .green]), startPoint: .top, endPoint: .bottom))
            
            Divider()
            
            Text("Horizon")
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.orange, .blue, .green]), startPoint: .leading, endPoint: .trailing))
            
            Divider()
            
            Text("Corner")
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.orange, .blue, .green, .red, .white]), startPoint: .top, endPoint: .trailing))
            
            Divider()
            
            Text("Radial Madness")
                .padding()
                .foregroundColor(.black)
                .background(RadialGradient(gradient: Gradient(colors: [.red, .white, .blue]), center: .center, startRadius: 5, endRadius: 100))
            
            
        }
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
