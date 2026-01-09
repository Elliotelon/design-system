//
//  Foundation+ Typography.swift
//  design-system
//
//  Created by 김민규 on 1/10/26.
//

import SwiftUI

extension Font {
    struct Foundation {
        /// 제목용: Tokens의 h1(24)과 bold를 결합
        static var heading1: Font {
            .system(size: Tokens.FontSize.h1, weight: .bold) // .bold는 가독성을 위해 직접 사용 권장
        }
        
        /// 본문용: Tokens의 body(16)와 regular를 결합
        static var body: Font {
            .system(size: Tokens.FontSize.body, weight: .regular)
        }
    }
}
