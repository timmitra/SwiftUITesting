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
        
        let sut = ContentView(viewModel: .init())
        
        let textView = try sut.inspect().find(viewWithId: "hello").text()
        let content = try textView.string()
        XCTAssertEqual(content, "Hello, world!")
    }
    
    func test_body_containsDarkModeToggle() throws {
        let sut = ContentView(viewModel: .init())
        
        let toggle = try sut.inspect().find(viewWithId: ContentView.Identifiers.darkModeSwitch).toggle()
        XCTAssertEqual(
            try toggle.labelView().text().string(),
            "Dark Mode"
        )
    }

    func test_toggle_whenTapped_switchesToTrue() throws {
        let sut = ContentView(viewModel: .init())
        
        let toggle = try sut.inspect().find(viewWithId: ContentView.Identifiers.darkModeSwitch).toggle()
        
        XCTAssertFalse(try toggle.isOn())
        try toggle.tap()
        XCTAssertTrue(try toggle.isOn())
    }
    
    func test_addDetailsAppears_whenSwitchIsOn() throws {
        
        let viewModel = ContentView.ViewModel()
        let sut = ContentView(viewModel: viewModel)
        
        let detailButton = try? sut.inspect().find(viewWithId: ContentView.Identifiers.addDetailsButton).button()
        
        XCTAssertNil(detailButton)
        
        let toggle = try sut.inspect().find(viewWithId: ContentView.Identifiers.darkModeSwitch).toggle()
        try toggle.tap()
        
        let detailButton2 = try? sut.inspect().find(viewWithId: ContentView.Identifiers.addDetailsButton).button()
        
        XCTAssertNil(detailButton2)
    }
}
