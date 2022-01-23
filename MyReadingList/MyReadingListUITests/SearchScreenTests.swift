//
//  SearchScreenTests.swift
//  MyReadingListUITests
//
//  Created by MacBook on 18/01/2022.
//

import XCTest
import MyReadingList

class SearchScreenTests: BaseTestFile {
    
    func testSearchableFieldForSerarchingBook() {
        let searchScreen = Routes.WhenUserGoesToSearchScreen()
        
        //Given: User is on Search screen (Assert all elements exist)
        XCTAssertTrue(searchScreen.backButton.exists) // back button exsits
        XCTAssertTrue(searchScreen.pageTitle.exists) // title exists
        XCTAssertTrue(searchScreen.searchBookField.exists) // search field with correct text exists
        
        //When: User selects the search bar and types some text
        searchScreen.searchBar.tap()
        searchScreen.searchBar.typeText("Harry Potter")
        
        guard let value = searchScreen.searchBar.value as? String else {
            return XCTFail("Failed to type in search bar")
        }
        
        // Then: The text should be reflect in the searchbar
        XCTAssertEqual(value, "Harry Potter")
    }
    
    func testCancellingSearchClearsSearchBar() {
        let searchScreen = Routes.WhenUserGoesToSearchScreen()
        
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
        searchScreen.button.tap()
    }
}
