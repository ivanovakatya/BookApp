//
//  BookListViewModel.swift
//  Bookstr
//
//  Created by MacBook on 24/10/2021.
//

import Foundation


class BookListViewModel: ObservableObject {
    private let webService: WebserviceProtocol
    @Published var books: [BookViewModel] = []
    
    init (webService: WebserviceProtocol = Webservice()){
        self.webService = webService
    }
    
    func search(name: String) async {
        do {
            let books = try await webService.getBooks(searchTerm: name)
            await updateBooks(books: books.map(BookViewModel.init))
        }
        catch {
            print(error)
        }
    }
    
    @MainActor func updateBooks(books: [BookViewModel]){
        self.books = books
    }
}

