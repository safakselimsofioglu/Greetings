//
//  TextView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 29.11.2024.
//

import SwiftUI

/// This is the text view in the app whose colors can change randomly
/// after being tapped.
struct TextView: View {
    
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .yellow,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0)
    ]
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIPad ? .largeTitle : .body
    }
    
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .clipShape(.rect(cornerRadius: 20.0))
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
                color = colors.randomElement() ?? .red
            }
    }
}

#Preview {
    VStack {
        TextView(text: "Hello there!", color: .green)
        TextView(text: "Hummus!", color: .blue)
        TextView(text: "Peace!", color: .purple)
    }
}
