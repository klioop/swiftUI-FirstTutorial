//
//  AddView.swift
//  SwiftUIPlayGroundForMe
//
//  Created by klioop on 2021/04/17.
//

import SwiftUI

struct AddView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        Button("Dissmiss") {
            isPresented = false
        }
    }
}
