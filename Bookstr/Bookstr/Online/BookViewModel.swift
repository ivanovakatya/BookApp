//
//  BookViewModel.swift
//  Bookstr
//
//  Created by Radoslav Blasko on 11/03/2022.
//

import Foundation

struct BookViewModel: Equatable, Codable, Identifiable {
    let id: String
    var title: String
    var subtitle: String
    var authors: [String]
    var description: String
    var image: String
    var publishedDate: String
    var pageCount: Int
    var previewLink: String
}

extension BookViewModel {
    init(item: Item) {
        id = item.id
        title = item.volumeInfo?.title ?? "No title"
        subtitle = item.volumeInfo?.subtitle ?? "No subtitle"
        authors = item.volumeInfo?.authors ?? []
        description = item.volumeInfo?.volumeInfoDescription ?? "No description"
        image = item.volumeInfo?.imageLinks?.thumbnail ?? ""
        publishedDate = item.volumeInfo?.publishedDate ?? "No date"
        pageCount = item.volumeInfo?.pageCount ?? 0
        previewLink = item.volumeInfo?.previewLink ?? ""
    }
}
