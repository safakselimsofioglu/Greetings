//
//  BackgroundView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 30.11.2024.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [
            .blue,
            Color(red: 139/255, green: 80/255, blue: 240/255)
        ], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.3)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
