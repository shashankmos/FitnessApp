//
//  ProgressCircleView.swift
//  FitnessApp
//
//  Created by CarX Connected Car on 24/12/24.
//

import SwiftUI

struct ProgressCircleView: View {
    @Binding var progress: Int
    var goal: Int
    var color: Color
    var width: CGFloat = 20
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(color.opacity(0.3),lineWidth: width)
            Circle()
                .trim(from: 0,to: CGFloat(progress) / CGFloat(goal))
                .stroke(color,style: StrokeStyle(lineWidth: width,lineCap: .round))
                .rotationEffect(.degrees(-90))
                .shadow(radius: 5)
        }
        .padding()
    }
}

#Preview {
    ProgressCircleView(progress: .constant(100), goal: 200, color: Color.red)
}
