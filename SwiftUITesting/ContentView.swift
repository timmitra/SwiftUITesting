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
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
