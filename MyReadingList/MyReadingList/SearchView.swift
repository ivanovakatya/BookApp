//
//  SearchView.swift
//  MyReadingList
//
//  Created by MacBook on 06/11/2021.
//

import SwiftUI


struct SearchView: View {
    @Environment(\.isSearching) var isSearching
    @State private var title = ""
    
    var body: some View {
        SearchBody()
            .navigationTitle(NSLocalizedString("ui.search.title", value: "Search", comment: "title for the Search screen"))
            .searchable(text: $title, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search for a book")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
