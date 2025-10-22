//
//  ContentView.swift
//  XcodeCloudSample
//
//  Created by Polepalli, Venkatesh on 10/09/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CounterViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Button(Constants.decrement) {
                viewModel.decrement()
            }
            .buttonModifier()
            
            Text("\(Constants.count) \(viewModel.count)")
                .font(.largeTitle)

            Button(Constants.increment) {
                viewModel.increment()
            }
            .buttonModifier()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

extension View {
    func buttonModifier() -> some View {
        self.modifier(ButtonModifier())
    }
}
