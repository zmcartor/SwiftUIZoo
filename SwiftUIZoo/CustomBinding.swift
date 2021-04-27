//
//  CustomBinding.swift
//  SwiftUIZoo
//
//  Created by Zach McArtor on 4/26/21.
//

import SwiftUI

struct CustomBinding: View {
    
    @State private var username = ""
    var body: some View {
        
        // This cannot be saved as a property because the struct is immutable!
        // Remember only property wrappers can be stored outside SwiftUI
        let coolBinding = Binding(
            get: { self.username },
            set: { self.username = $0; print("Set the username!!") })
        
        return VStack {
            TextField("Enter your name please: ", text: coolBinding)
            
            TextField("I have an onChange modifier", text: $username)
            .onChange(of: username) { value in
                print("Using onChange is another way to observe a @State change")
            }
        }
    }
}

struct CustomBinding_Previews: PreviewProvider {
    static var previews: some View {
        CustomBinding()
    }
}
