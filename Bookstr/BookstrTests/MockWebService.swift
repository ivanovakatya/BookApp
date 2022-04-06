//
//  MockWebService.swift
//  BookstrTests
//
//  Created by MacBook on 25/02/2022.
//

import Foundation
@testable import Bookstr

class MockWebService: WebserviceProtocol {
    var mockItems: [Item] = []
    var mockError: NetworkError?
    
    func getBooks(searchTerm: String) async throws -> [Item] {
        if let mockError = mockError {
            throw mockError
        }
        
        return mockItems
    }
}

