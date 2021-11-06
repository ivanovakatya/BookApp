//
//  SearchView.swift
//  MyReadingList
//
//  Created by MacBook on 06/11/2021.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        Text(NSLocalizedString("ui.SearchView.title", value: "Search Screen", comment: "title for the Search screen"))
            .font(.headline)
        Spacer()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
