//
//  SearchView.swift
//  MyReadingList
//
//  Created by MacBook on 06/11/2021.
//

import SwiftUI


struct SearchView: View {
    @Environment(\.isSearching) var isSearching
    @State private var showingAlert = false
    @State private var searchText = ""
    
    var body: some View {
        SearchBody()
            .navigationTitle(NSLocalizedString("ui.search.title", value: "Search", comment: "title for the Search screen"))
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search for a book")
        // Add teporary button to be able to save and print the searched title
        Button("Enter") {
            do {
                try CoreDataManager().saveBook(title: searchText)
                print("Searched book is: \(searchText)")
            } catch {
                showingAlert = true
            }
        }.foregroundColor(Color.red)
            .alert("Something went wrong please try again!", isPresented: self.$showingAlert){
                Button("OK", role: .cancel){}
            }
        Spacer()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
