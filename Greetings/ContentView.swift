//
//  ContentView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 29.11.2024.
//

import SwiftUI

struct ContentView: View {
    let messages: [DataItemModel] = [
        //DataItemModel(text: "Hello there!",color: .green)
        .init(text: "Hello there!", color: Color.green),
        .init(text: "Welcome to Swift Programming",color: Color.gray),
        .init(text: "Are you ready to,",color: Color.yellow),
        .init(text: "start exploring?",color: Color.red),
        .init(text: "Boom!",color: Color.purple)]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
