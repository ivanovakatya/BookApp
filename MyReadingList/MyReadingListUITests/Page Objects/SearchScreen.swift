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
    var pageTitle: XCUIElement {
        return app.navigationBars["Search"].firstMatch
    }
    func isDisplayed() -> Bool {
        return searchBookField.exists
    }

    var searchBookField: XCUIElement {
        return app.searchFields["search-book-button"].firstMatch
    }
    
    var backButton: XCUIElement {
        return app.navigationBars.buttons.element(boundBy: 0)
    }
}
