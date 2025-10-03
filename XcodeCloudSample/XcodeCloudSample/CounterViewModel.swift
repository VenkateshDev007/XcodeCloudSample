//
//  CounterViewModel.swift
//  XcodeCloudSample
//
//  Created by Polepalli, Venkatesh on 26/09/25.
//

import Foundation

class CounterViewModel: ObservableObject {
    @Published var count: Int = 0

    func increment() {
        count += 1
    }
    
    func decrement() {
        count -= 1
    }
    
}
