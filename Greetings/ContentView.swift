//
//  ContentView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 29.11.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
