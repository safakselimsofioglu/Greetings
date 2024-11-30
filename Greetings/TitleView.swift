//
//  TitleView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 29.11.2024.
//

import SwiftUI

struct TitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [
            .pink, .purple, .blue, .orange, .yellow]), center: .center, angle: .zero)
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Exploring iOS Programming")
                    .font(.headline)
                    .fontWeight(.thin)
            }
            
            Spacer()
            
            Circle()
                .strokeBorder(angularGradient, lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation(Animation.spring()) {
                        isRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
