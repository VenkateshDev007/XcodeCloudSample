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
            Button("Deccrement") {
                viewModel.decrement()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            
            Text("Count: \(viewModel.count)")
                .font(.largeTitle)

            Button("Increment") {
                viewModel.increment()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
