//
//  Foundation+Color.swift
//  design-system
//
//  Created by 김민규 on 1/10/26.
//

import SwiftUI

extension Color {
    struct Foundation {
        /// 브랜드 주색
        static var brandPrimary: Color {
            .adaptive(light: Tokens.RawColor.blue500, dark: Tokens.RawColor.blue500)
        }
        
        /// 기본 배경색 (다크모드 자동 대응)
        static var bgBase: Color {
            .adaptive(light: .white, dark: Tokens.RawColor.gray900)
        }
        
        /// 기본 텍스트색 (다크모드 자동 대응)
        static var textPrimary: Color {
            .adaptive(light: Tokens.RawColor.gray900, dark: .white)
        }
    }
}
