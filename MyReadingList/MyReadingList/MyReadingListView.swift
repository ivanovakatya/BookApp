//
//  MyReadingListView.swift
//  MyReadingList
//
//  Created by MacBook on 24/10/2021.
//

import SwiftUI


struct MyReadingListView: View {
    var body: some View {
        VStack {
            Text(NSLocalizedString("ui.myReadingList.title", value: "My Reading List", comment: "title for the MyReadingList screen"))
                .font(.headline)
            Spacer()
            
            NavigationView {
                List {
                    HStack{
                        NavigationLink {
                                    SearchView()
                    } label: {
                            Image(systemName: "plus.circle")
                            Text(NSLocalizedString("ui.myReadingList.addABook.button", value: "Add a book", comment: "Add a Book button in MyReadingList screen"))
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyReadingListView()
    }
}
