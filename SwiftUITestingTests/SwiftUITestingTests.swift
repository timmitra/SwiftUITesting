//
//  SwiftUITestingTests.swift
//  SwiftUITestingTests
//
//  Created by Tim Mitra on 2025-01-01.
//

import XCTest
import ViewInspector
@testable import SwiftUITesting

extension ContentView: @retroactive Inspectable {}

final class SwiftUITestingTests: XCTestCase {

    func testContentView() throws {
        
        let sut = ContentView()
        
        let textView = try sut.inspect().find(viewWithId: "hello").text()
        let content = try textView.string()
        XCTAssertEqual(content, "Hello, world!")
    }

}
