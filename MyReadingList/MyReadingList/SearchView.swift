//
//  SearchView.swift
//  MyReadingList
//
//  Created by MacBook on 06/11/2021.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack{
            Text("")
                .searchable(text: $searchText, prompt: "Search for a book")
        }.navigationTitle(NSLocalizedString("ui.search.title", value: "Search", comment: "title for the Search screen"))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
