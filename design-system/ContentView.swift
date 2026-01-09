//
//  ContentView.swift
//  design-system
//
//  Created by 김민규 on 1/9/26.
//

import SwiftUI

struct ContentView: View {
    // 텍스트 필드 입력을 위한 상태 변수
    @State private var emailText: String = ""
    
    var body: some View {
        ZStack {
            // 1. Foundation 레이어의 배경색 사용 (다크모드 자동 대응)
            Color.Foundation.bgBase
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: .Foundation.sectionSpace) {
                
                // 2. Foundation 레이어의 타이포그래피 사용
                VStack(alignment: .leading, spacing: 8) {
                    Text("반갑습니다!")
                        .font(.Foundation.heading1)
                        .foregroundColor(.Foundation.textPrimary)
                    
                    Text("디자인 시스템으로 구현된 로그인 화면입니다.")
                        .font(.Foundation.body)
                        .foregroundColor(.Foundation.textPrimary.opacity(0.7))
                }
                
                // 3. Components 레이어의 입력창 사용 (Foundation 매핑값 적용됨)
                VStack(spacing: .Foundation.gutter) {
                    PrimaryTextField(placeholder: "이메일을 입력하세요", text: $emailText)
                }
                
                Spacer()
                
                // 4. Components 레이어의 브랜드 버튼 사용
                PrimaryButton(title: "로그인하기") {
                    print("로그인 액션 실행")
                    // 필요 시 Helpers 레이어의 햅틱 유틸리티 호출 가능
                }
                
                // 5. Overlays 그룹의 컴포넌트 예시
                GeneralToast(message: "2026년 표준 디자인 시스템 적용 중")
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, .Foundation.screenMargin) // 레이아웃 파운데이션 활용
            .padding(.top, 40)
        }
    }
}

// --- Preview ---
#Preview("Light Mode") {
    ContentView()
        .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    ContentView()
        .preferredColorScheme(.dark)
}
