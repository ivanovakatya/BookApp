//
//  SearchScreenTests.swift
//  MyReadingListUITests
//
//  Created by MacBook on 18/01/2022.
//

import XCTest
import MyReadingList

class SearchScreenTests: BaseTestFile {
    let myReadingListScreen = SearchScreen()
    
    func testSearchableFieldForSerarchingBookWorks() {
        //All fields exsit and user is able to type text in the search field
        //    Given: User is on the Search screen (assert navigation title 'Search' + search button exist)
        //    When: User taps on ‘Search for a book’ field
        //    Then: User should be able to type in the field
        //    And: User should see the ‘Cancel’ button
        
        //User is able to 'Cancel' text in the search field
        //    Given: User is typing text in the search field
        //    And: User taps on the 'Cancel' button
        //    Then: User should be taken to the previous view
        
        //User dismiss the search field when press "Enter"
        //    Given: User is typing text in the search field
        //    When: User taps on ‘Enter’ button
        //    Then:  User should be able to dismiss this view (for now)
    }
}
