//
//  Color+Extension.swift
//  design-system
//
//  Created by 김민규 on 1/10/26.
//

import SwiftUI
import UIKit

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex.replacingOccurrences(of: "#", with: ""))
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        self.init(.sRGB, red: Double((rgb >> 16) & 0xFF) / 255, green: Double((rgb >> 8) & 0xFF) / 255, blue: Double(rgb & 0xFF) / 255, opacity: 1)
    }

    static func adaptive(light: Color, dark: Color) -> Color {
        return Color(UIColor { traitCollection in
            // 2026년형 프리뷰 대응: traitCollection이 비어있을 경우 라이트 모드를 기본값으로 제공
            let style = traitCollection.userInterfaceStyle
            if style == .dark {
                return UIColor(dark)
            } else {
                return UIColor(light)
            }
        })
    }
}
