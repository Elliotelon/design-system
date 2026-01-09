//
//  AppTextField.swift
//  design-system
//
//  Created by 김민규 on 1/10/26.
//

import SwiftUI

struct PrimaryTextField: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .font(.Foundation.body) // Foundation 참조
            .padding(.Foundation.gutter) // Foundation 참조
            .background(Color.Foundation.bgBase) // Foundation 참조
            .clipShape(RoundedRectangle(cornerRadius: .Foundation.cornerRadius)) // Foundation 참조
            .overlay(
                RoundedRectangle(cornerRadius: .Foundation.cornerRadius)
                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
            )
    }
}
