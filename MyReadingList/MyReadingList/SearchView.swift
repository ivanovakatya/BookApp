//
//  SearchView.swift
//  MyReadingList
//
//  Created by MacBook on 06/11/2021.
//

import SwiftUI


struct SearchView: View {
    @Environment(\.dismissSearch) var dismissSearch
    @State private var searchText = ""

    var body: some View {
        VStack{
            Text("")
                .accessibility(identifier: "search-book-button")
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search for a book")
        .navigationTitle(NSLocalizedString("ui.search.title", value: "Search", comment: "title for the Search screen"))
        .onSubmit(of: .search) {
            dismissSearch()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
