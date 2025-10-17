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
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            
            Text("\(Constants.count) \(viewModel.count)")
                .font(.largeTitle)

            Button(Constants.increment) {
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
