//
//  HomeScreen.swift
//  MyReadingListUITests
//
//  Created by MacBook on 24/10/2021.
//

import XCTest

class HomeScreen: Page {
    var app: XCUIApplication

    init() {
        app = XCUIApplication()
    }

    func isDisplayed() -> Bool {
        return label.exists
    }

    var label: XCUIElement {
        return app.staticTexts["add-book-button"].firstMatch
    }
    
    func goToSearchScreen() -> SearchScreen {
        self.label.tap()
        return SearchScreen()
    }
}
