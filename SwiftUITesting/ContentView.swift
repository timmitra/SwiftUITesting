//
//  ContentView.swift
//  SwiftUITesting
//
//  Created by Tim Mitra on 2025-01-01.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .id("hello")
            Toggle("Dark Mode", isOn: $viewModel.isDarkModeEnabled)
                .id(ContentView.Identifiers.darkModeSwitch)
            if viewModel.isDarkModeEnabled {
                Button("Add Details") {
                    viewModel.isDarkModeEnabled.toggle()
                }
                .id(ContentView.Identifiers.addDetailsButton)
            }
        }
        .padding()
    }
}

extension ContentView {
    enum Identifiers {
        static let darkModeSwitch = "darkModeSwitch"
        static let addDetailsButton = "addDetailsButton"
    }
}

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var isDarkModeEnabled = false
    }
}

#Preview {
    ContentView(viewModel: .init())
}
