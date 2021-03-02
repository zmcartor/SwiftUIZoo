//
//  KeyboadManagement.swift
//  SwiftUIZoo
//
//  Created by zm on 3/1/21.
//

import SwiftUI
import Foundation

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
