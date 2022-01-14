//
//  SearchScreen.swift
//  MyReadingListUITests
//
//  Created by MacBook on 14/01/2022.
//

import XCTest

class SearchScreen: Page {
    var app: XCUIApplication

    init() {
        app = XCUIApplication()
    }

    var back: XCUIElement {
        return app.navigationBars.buttons.element(boundBy: 0)
    }
    
    var searchTitle: XCUIElement {
        return app.navigationBars["Search"].firstMatch
    }
    
    var navbar: XCUIElement {
        return app.navigationBars.firstMatch
    }
}
