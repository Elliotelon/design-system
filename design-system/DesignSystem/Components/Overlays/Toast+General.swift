//
//  AppToast.swift
//  design-system
//
//  Created by 김민규 on 1/10/26.
//

import SwiftUI

struct GeneralToast: View {
    let message: String
    
    var body: some View {
        Text(message)
            .font(.Foundation.body)
            .foregroundColor(.white)
            .padding(.horizontal, .Foundation.gutter)
            .padding(.vertical, 12)
            .background(Color.black.opacity(0.8))
            .clipShape(Capsule()) 
            .shadow(radius: 4)
    }
}
