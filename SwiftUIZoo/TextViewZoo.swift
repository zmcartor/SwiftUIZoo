//
//  TextViewZoo.swift
//  SwiftUIZoo
//
//  Created by zm on 2/27/21.
//

import SwiftUI

struct TextViewZoo: View {
    
    @State private var name: String = ""
    var body: some View {
        
        VStack {
            Text("A textfield example")
            TextField("Placeholder string", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .disableAutocorrection(true)
            
            Text("Hello \(name)")
            
        }
        
    }
}

struct TextViewZoo_Previews: PreviewProvider {
    static var previews: some View {
        TextViewZoo()
    }
}
