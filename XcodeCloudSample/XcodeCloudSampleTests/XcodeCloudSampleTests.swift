//
//  XcodeCloudSampleTests.swift
//  XcodeCloudSampleTests
//
//  Created by Polepalli, Venkatesh on 10/09/25.
//

import Testing
@testable import XcodeCloudSample

struct XcodeCloudSampleTests {

    @Test func example() async throws {
        let viewModel = CounterViewModel()
        
        // Act
        viewModel.increment()
        
        // Assert
        #expect(viewModel.count == 1)
    }

    @Test func decrement() async throws {
        let viewModel = CounterViewModel()
        
        // Act
        viewModel.decrement()
        
        // Assert
        #expect(viewModel.count == -1)
    }
}
