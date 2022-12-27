//
//	SwiftUIToggleSampleUITests.swift
//  SwiftUIToggleSampleUITests
//
//  Created by Juan Mueller on 12/23/22.
//  For more, visit www.ajourneyforwisdom.com
//

import XCTest

final class SwiftUIToggleSampleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTogglesRespondCorrectly() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        // Get all toggles visible in the current view.
        let toggles = app.switches
        // Wait one second
        sleep(1)
        // Execute UI action
        toggles["AJourneyForWisdom"].tap()
        toggles["QueenQuirks"].tap()
        // Wait one second
        sleep(1)
        // Assert your assumptions
        XCTAssertEqual((toggles["AJourneyForWisdom"].value != nil), true, "Toggle is not responding!")
        XCTAssertEqual((toggles["QueenQuirks"].value != nil), true, "Toggle is not responding!")
        // Execute UI action
        toggles["FollowAll"].tap()
        // Wait one second
        sleep(1)
        // Assert your assumptions
        XCTAssertEqual((toggles["Pewdipie"].value != nil), true, "Toggle is not responding!")
        XCTAssertEqual((toggles["Markiplier"].value != nil), true, "Toggle is not responding!")
        XCTAssertEqual((toggles["AJourneyForWisdom"].value != nil), true, "Toggle is not responding!")
        XCTAssertEqual((toggles["GameTheory"].value != nil), true, "Toggle is not responding!")
        XCTAssertEqual((toggles["QueenQuirks"].value != nil), true, "Toggle is not responding!")
        // Assert your assumptions
        XCTAssertEqual((toggles["FollowAll"].value != nil), true, "Toggle is not responding!")
        // Wait one second
        sleep(1)
    }
}
