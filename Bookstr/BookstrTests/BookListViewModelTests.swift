//
//  BookListViewModelTests.swift
//  BookstrTests
//
//  Created by MacBook on 25/02/2022.
//

import XCTest
@testable import Bookstr

class BookListViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSearchWhenResultIsEmpty() async throws {
        // Given: This service is mocked and is provided to this subject
        let mockService = MockWebService()
        mockService.mockItems = []
        let subject = BookListViewModel(webService: mockService)
        
        // When: Method search is called with name 'Test'
        await subject.search(name: "Test")
        
        // Then: The test shoud 
        XCTAssertTrue(subject.books.isEmpty)
    }
    

    func testSearchWhenItReturnsResult() async throws {
        //when
        let mockService = MockWebService()
        mockService.mockItems = [Item(id: "id", volumeInfo: VolumeInfo(title: "Test 2"))]
        let subject = BookListViewModel(webService: mockService)
        //given
        await subject.search(name: "Test 2")
        //then
        XCTAssertEqual(subject.books, [BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(title: "Test 2")))])
    }
    
    func testSearchWhenItReturnsError() async throws {
        //when
        let mockService = MockWebService()
        mockService.mockError = .badURL
        let subject = BookListViewModel(webService: mockService)
        //given
        await subject.search(name: "Test 2")
        //then
        XCTAssertTrue(subject.books.isEmpty)
    }

    @MainActor func testUpdateBooks() {
        //when
        let subject = BookListViewModel(webService: MockWebService())
        //given
        subject.updateBooks(books: [BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(title: "Test 2")))])
        //then
        XCTAssertEqual(subject.books, [BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(title: "Test 2")))])
    }
}
