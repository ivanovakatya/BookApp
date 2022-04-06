//
//  MyReadingListScreen.swift
//  Bookstr
//
//  Created by MacBook on 18/03/2022.
//

import XCTest
@testable import Bookstr

class MyReadingListScreen: Page {
    var app: XCUIApplication
    
    init() {
        app = XCUIApplication()
    }
    
    var backButton: XCUIElement {
        return app.navigationBars.buttons.element(boundBy: 0)
    }
    
    var pageTitle: XCUIElement {
        return app.navigationBars["My Reading List"].firstMatch
    }
    
    var searchBookField: XCUIElement {
        return app.searchFields["Search for a book"].firstMatch
    }
    
    var searchbar: XCUIElement {
        return app.navigationBars.firstMatch
    }
    
    var searchBar: XCUIElement {
        return searchbar.searchFields.firstMatch
    }
    
    var label: XCUIElement {
        return app.staticTexts["Cancel"].firstMatch
    }
    
    var cancelButton: XCUIElement {
        return app.buttons["Cancel"]
    }
}
