//
//  NetworkError.swift
//  Bookstr
//
//  Created by MacBook on 24/10/2021.
//

import SwiftUI

enum NetworkError: Error {
    case badURL
    case badID
}

protocol WebserviceProtocol {
    func getBooks(searchTerm: String) async throws -> [Item]
}

class Webservice: WebserviceProtocol {
    func getBooks(searchTerm: String) async throws -> [Item] {
        let url = URL(string: "https://www.googleapis.com/books/v1/volumes?q=\(searchTerm.customized())")!
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard (200...299).contains((response as? HTTPURLResponse)!.statusCode) else {
            throw NetworkError.badID
        }
        
        let bookResponse = try? JSONDecoder().decode(User.self, from: data)
        return bookResponse?.items ?? []
    }
}

extension String {
    func customized() -> String {
        self.replacingOccurrences(of: " ", with: "+")
    }
}

