//
//  TextView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 29.11.2024.
//

import SwiftUI

struct TextView: View {
    
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .clipShape(.rect(cornerRadius: 20.0))
            .shadow(color: color, radius: 5, x: 10, y: 10)
    }
}

#Preview {
    VStack {
        TextView(text: "Hello there!", color: .green)
        TextView(text: "Hummus!", color: .blue)
        TextView(text: "Peace!", color: .purple)
    }
}
