//
//  MyReadingListView.swift
//  Bookstr
//
//  Created by MacBook on 24/10/2021.
//

import SwiftUI

struct MyReadingListView: View {
    @ObservedObject private var bookListVM = BookListViewModel()
    @EnvironmentObject var jsonData: JsonData
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List {
                if !searchText.isEmpty {
                    Section {
                        ForEach(bookListVM.books, id: \.title) { book in
                            NavigationLink(destination: BookDetailView(book: book)) {
                                BookResults(book: book)
                            }
                            .listRowSeparator(.hidden)
                        }
                    }
                }
                
                else {
                    Section {
                        ForEach(jsonData.jsonArray) { book in
                            NavigationLink(destination: SavedDetailView(book: book)) {
                                VStack(alignment: .leading) {
                                    Text(book.title)
                                    
                                    if !(book.subtitle == "No subtitle") {
                                        Text(book.subtitle)
                                    }
                                }
                                .foregroundColor(.black)
                                
                            }
                        }
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color(.clear))
                }
            }
            .listStyle(.plain)
            .background(
                Wallpaper()
            )
            .navigationTitle("My Reading List")
            .searchable(text: $searchText,
                        placement: .navigationBarDrawer(displayMode: .always),
                        prompt: "Search for a book")
            .onChange(of: searchText) { searchValue in
                Task.init {
                    if !searchValue.isEmpty && searchValue.count > 3 {
                        await bookListVM.search(name: searchValue)
                    } else {
                        bookListVM.books.removeAll()
                    }
                }
            }
        }
    }
}
