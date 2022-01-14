//
//  HomeScreenTests.swift
//  MyReadingListUITests
//
//  Created by MacBook on 24/10/2021.
//

import XCTest
import MyReadingList

class HomeScreenTests: BaseTestClass {
    let homeScreen = HomeScreen()
    
    func testWhenAddABookButtonIsPressedSearchScreenIsOpen() {
        //Given: I am on the MyReadingListView screen (assert navigation title + button exist)
        XCTAssertTrue(homeScreen.isDisplayed())
        XCTAssertEqual(homeScreen.label.label, "Add a book")
        //When: I click on 'Add Book' button
        homeScreen.button.tap()
        //Then: I should be on the search screen, with the title, 'My ReadingList' back button and field showing
        XCTAssertEqual(homeScreen.label.label, "My ReadingList")
    }
    
}
