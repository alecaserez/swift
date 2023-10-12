//
//  CustomCircleAnimation.swift
//  Hike
//
//  Created by Alejandro Caserez on 09/10/2023.
//

import SwiftUI

struct CustomCircleAnimation: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        Circle()
            .fill(
                LinearGradient(
                    colors: [
                        Color.customIndigoMedium,
                        Color.customSalmonLight
                    ],
                    startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                    endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing )
            )
            .onAppear {
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                    isAnimateGradient.toggle()
                }
            }
            .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleAnimation()
}
