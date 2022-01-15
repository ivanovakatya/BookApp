//
//  HomeScreenTests.swift
//  MyReadingListUITests
//
//  Created by MacBook on 24/10/2021.
//

import XCTest
import MyReadingList

class HomeScreenTests: BaseTestFile{
    let homeScreen = HomeScreen()
    
    func testWhenAddABookButtonIsPressedSearchScreenIsOpen() {
        //Given: I am on the MyReadingListView screen (assert navigation title + button exist)
        XCTAssertTrue(homeScreen.isDisplayed())
        XCTAssertEqual(homeScreen.label.label, "Add a book")
        XCTAssertTrue(homeScreen.homePageTitle.exists)
        //When: I click on 'Add Book' button
        let searchScreen = homeScreen.goToSearchScreen()
        
        //Then: I should be on the search screen, with the title, 'My ReadingList' back button and field showing
        XCTAssertEqual(searchScreen.back.label, "My Reading List")
        XCTAssertTrue(searchScreen.searchTitle.exists)
    }
    
}
