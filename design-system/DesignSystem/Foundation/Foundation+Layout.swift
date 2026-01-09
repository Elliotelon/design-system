//
//  Foundation+Layout.swift
//  design-system
//
//  Created by 김민규 on 1/10/26.
//

import SwiftUI

extension CGFloat {
    struct Foundation {
        // Spacing 매핑
        static var gutter: CGFloat { Tokens.Spacing.s }
        static var sectionSpace: CGFloat { Tokens.Spacing.m }
        static var screenMargin: CGFloat { Tokens.Spacing.l }
        
        // Radius 매핑
        static var cornerRadius: CGFloat { Tokens.Radius.l }
        static var fieldRadius: CGFloat { Tokens.Radius.m }
    }
}


