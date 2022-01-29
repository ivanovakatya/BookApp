//
//  SearchView.swift
//  MyReadingList
//
//  Created by MacBook on 06/11/2021.
//

import SwiftUI


struct SearchView: View {
    @Environment(\.isSearching) var isSearching
    let coreDataManager: CoreDataManager
    @State private var title = ""
    @State private var books: [Book] = [Book]()
    
    private func populateBooks() {
        books = coreDataManager.getAllBooks()
    }
    
    var body: some View {
        SearchBody()
            .navigationTitle(NSLocalizedString("ui.search.title", value: "Search", comment: "title for the Search screen"))
            .searchable(text: $title, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search for a book")
        Button("Enter") {
            coreDataManager.saveBook(title: title)
            populateBooks()
        }
        
        List(books,id: \.self) { book in
            Text(book.title ?? "")
        }
        
        Spacer()
            .onAppear(perform: {
                populateBooks()
            })
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(coreDataManager: CoreDataManager())
    }
}
