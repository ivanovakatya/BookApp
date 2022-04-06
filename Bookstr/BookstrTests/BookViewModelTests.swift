//
//  BookViewModelTests.swift
//  BookstrTests
//
//  Created by MacBook on 04/03/2022.
//

import XCTest
@testable import Bookstr

class BookViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBookTitleNotNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(title: "some title")))
        XCTAssertEqual(subject.title, "some title")
    }
    
    func testBookTitleNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(title: nil)))
        XCTAssertEqual(subject.title, "No title")
    }
    
    func testBookSubTitleNotNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(subtitle: "some subtitle")))
        XCTAssertEqual(subject.subtitle, "some subtitle")
    }
    
    func testBookSubTitleNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(subtitle: nil)))
        XCTAssertEqual(subject.subtitle, "No subtitle")
    }
    
    func testBookAuthorsIsNotEmpty() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(authors: ["Author"])))
        XCTAssertEqual(subject.authors, ["Author"])
    }
    
    func testBookAuthorsIsEmpty() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(authors: [])))
        XCTAssertEqual(subject.authors, [])
    }
    
    func testBookAuthorsIsNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(authors: nil)))
        XCTAssertEqual(subject.authors, [])
    }
    
    func testBookDescriptionNotNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(volumeInfoDescription: "some description")))
        XCTAssertEqual(subject.description, "some description")
    }
    
    func testBookDescriptionNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(volumeInfoDescription: nil)))
        XCTAssertEqual(subject.description, "No description")
    }
    
    func testBookImageLinksNotNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(imageLinks: ImageLinks(thumbnail: "some image"))))
        XCTAssertEqual(subject.image, "some image")
    }
    
    func testBookImageLinksNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(imageLinks: nil)))
        XCTAssertEqual(subject.image, "")
    }
    
    func testBookPublishedDateNotNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(publishedDate: "some publishedDate")))
        XCTAssertEqual(subject.publishedDate, "some publishedDate")
    }
    
    func testBookPublishedDateNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(publishedDate: nil)))
        XCTAssertEqual(subject.publishedDate, "No date")
    }
    
    func testBookPageCountNotNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(pageCount: 159)))
        XCTAssertEqual(subject.pageCount, 159)
    }
    
    func testBookPageCountNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(pageCount: nil)))
        XCTAssertEqual(subject.pageCount, 0)
    }
    
    func testBookPreviewLinkNotNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(previewLink: "some previewLink")))
        XCTAssertEqual(subject.previewLink, "some previewLink")
    }
    
    func testBookPreviewLinkNil() throws {
        let subject = BookViewModel(item: Item(id: "id", volumeInfo: VolumeInfo(previewLink: nil)))
        XCTAssertEqual(subject.previewLink, "")
    }
}


