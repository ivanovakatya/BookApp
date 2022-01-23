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
    
    var backButton: XCUIElement {
        return app.navigationBars.buttons.element(boundBy: 0)
    }
    
    var pageTitle: XCUIElement {
        return app.navigationBars["Search"].firstMatch
    }
    
    var searchBookField: XCUIElement {
        return app.searchFields["Search for a book"].firstMatch
    }
    
    var navbar: XCUIElement {
        return app.navigationBars.firstMatch
    }
    
    var searchBar: XCUIElement {
        return navbar.searchFields.firstMatch
    }

    var label: XCUIElement {
        return app.staticTexts["Cancel"].firstMatch
    }

    var button: XCUIElement {
        return app.buttons["Cancel"]
    }
}
