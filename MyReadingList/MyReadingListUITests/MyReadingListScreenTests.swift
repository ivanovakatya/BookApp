//
//  HomeScreenTests.swift
//  MyReadingListUITests
//
//  Created by MacBook on 24/10/2021.
//

import XCTest
import MyReadingList

class MyReadingListScreenTests: BaseTestFile {
    let myReadingListScreen = MyReadingListScreen()
    
    func testWhenAddABookButtonIsPressedSearchScreenIsOpen() {
        // Given: User is on the MyReadingListView screen (assert navigation title + button exist)
        XCTAssertTrue(myReadingListScreen.isDisplayed())
        XCTAssertTrue(myReadingListScreen.pageTitle.exists)
        XCTAssertEqual(myReadingListScreen.addBookButton.label, "Add a book")
        
        // When: User taps on 'Add Book' button
        let searchScreen = myReadingListScreen.goToSearchScreen()
        
        // Then: User should be on the search screen, with back button and title
        XCTAssertTrue(searchScreen.backButton.exists)
        XCTAssertTrue(searchScreen.pageTitle.exists)
    }
}
