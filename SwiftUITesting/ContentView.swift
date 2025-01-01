//
//  ContentView.swift
//  SwiftUITesting
//
//  Created by Tim Mitra on 2025-01-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .id("hello")
            Toggle("Dark Mode", isOn: .constant(false))
                .id(ContentView.Identifiers.darkModeSwitch)
        }
        .padding()
    }
}

extension ContentView {
    enum Identifiers {
        static let darkModeSwitch = "darkModeSwitch"
    }
}

#Preview {
    ContentView()
}
