//
//  SearchView.swift
//  MyReadingList
//
//  Created by MacBook on 06/11/2021.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView{
            VStack{
                // plaseholder 
            }.navigationTitle(NSLocalizedString("ui.search.title", value: "Search", comment: "title for the Search screen"))
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
