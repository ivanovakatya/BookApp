//
//  HomeScreenTests.swift
//  MyReadingListUITests
//
//  Created by MacBook on 24/10/2021.
//

import XCTest
import MyReadingList

class MyReadingListScreenTests: BaseTestFile {
    let homeScreen = MyReadingListScreen()
    
    func testWhenAddABookButtonIsPressedSearchScreenIsOpen() {
        //Given: User is on the MyReadingListView screen (assert navigation title + button exist)
        XCTAssertTrue(homeScreen.isDisplayed())
        XCTAssertTrue(homeScreen.homePageTitle.exists)
        XCTAssertEqual(homeScreen.addBookButton.label, "Add a book")
        
        //When: User clicks on 'Add Book' button
        let searchScreen = homeScreen.goToSearchScreen()
        
        //Then: User should be on the search screen, with the title, 'My ReadingList' back button and field showing
        XCTAssertEqual(searchScreen.backButton.label, "My Reading List")
        XCTAssertTrue(searchScreen.searchTitle.exists)
    }
}
