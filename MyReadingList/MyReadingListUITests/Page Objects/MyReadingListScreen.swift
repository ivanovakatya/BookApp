//
//  HomeScreen.swift
//  MyReadingListUITests
//
//  Created by MacBook on 24/10/2021.
//

import XCTest

class MyReadingListScreen: Page {
    var app: XCUIApplication

    init() {
        app = XCUIApplication()
    }

    func isDisplayed() -> Bool {
        return addBookButton.exists
    }

    var addBookButton: XCUIElement {
        return app.staticTexts["add-book-button"].firstMatch
    }
    
    var pageTitle: XCUIElement {
        return app.navigationBars["My Reading List"].firstMatch
    }
    
    var navbar: XCUIElement {
        return app.navigationBars.firstMatch
    }
    
    func goToSearchScreen() -> SearchScreen {
        self.addBookButton.tap()
        return SearchScreen()
    }
}
