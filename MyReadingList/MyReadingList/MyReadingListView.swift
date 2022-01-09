//
//  MyReadingListView.swift
//  MyReadingList
//
//  Created by MacBook on 24/10/2021.
//

import SwiftUI


struct MyReadingListView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    SearchView()
                } label: {
                    Text(NSLocalizedString("ui.myReadingList.addABook.button", value: "Add a book", comment: "Add a Book button in MyReadingList screen"))
                        .accessibility(identifier: "add-book-button")
                }
            }.navigationTitle(NSLocalizedString("ui.myReadingList.title", value: "My Reading List", comment: "title for the MyReadingList screen"))
                .accessibility(identifier: "home-screen-title")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyReadingListView()
    }
}
