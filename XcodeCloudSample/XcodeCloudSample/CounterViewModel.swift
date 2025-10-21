//
//  CounterViewModel.swift
//  XcodeCloudSample
//
//  Created by Polepalli, Venkatesh on 26/09/25.
//

import Foundation

class CounterViewModel: ObservableObject {
    @Published var count: Int = 0

    //MARK: - increment count
    func increment() {
        count += 1
    }
    
    //MARK: - deccrement count
    func decrement() {
        count -= 1
    }
    
}
