//
//  PrimaryButton.swift
//  design-system
//
//  Created by 김민규 on 1/10/26.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.Foundation.body)
                .foregroundColor(.white)
                .padding(.vertical, .Foundation.gutter)
                .frame(maxWidth: .infinity)
                .background(Color.Foundation.brandPrimary)
                .clipShape(RoundedRectangle(cornerRadius: .Foundation.cornerRadius))
        }
    }
}
