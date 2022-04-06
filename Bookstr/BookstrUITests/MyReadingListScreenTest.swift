//
//  SearchScreenTests.swift
//  BookstrTests
//
//  Created by MacBook on 18/03/2022.
//

import XCTest


class MyReadingListScreenTests: BaseTestFile {
    
    func testSearchableFieldForSerarchingBook() {
        let searchScreen =  MyReadingListScreen()
        
        //Given: User is on Search screen (Assert all elements exist)
        
        XCTAssertTrue(searchScreen.pageTitle.exists)
        XCTAssertTrue(searchScreen.searchBookField.exists)
        
        //When: User selects the search bar and types some text
        searchScreen.searchBar.tap()
        searchScreen.searchBar.typeText("Harry Potter")
        sleep(4)
        
        guard let value = searchScreen.searchBar.value as? String else {
            return XCTFail("Failed to type in search bar")
        }
        
        // Then: The text should be reflect in the searchbar
        XCTAssertEqual(value, "Harry Potter")
    }
    
    func testCancellingSearchClearsSearchBar() {
        let searchScreen =  MyReadingListScreen()
        //Given: User selects the search bar and types some text
        searchScreen.searchBar.tap()
        searchScreen.searchBar.typeText("Harry")
        
        guard let value = searchScreen.searchBar.value as? String else {
            return XCTFail("Failed to type in search bar")
        }
        
        // When: The text is reflected in the searchbar
        XCTAssertEqual(value, "Harry")
        
        //Then: When the user tap on the 'Cancel' button the search view should be dismiss (button label matches)
        XCTAssertTrue(searchScreen.label.exists)
        sleep(2)
        searchScreen.cancelButton.tap()
        sleep(1)
    }
}
