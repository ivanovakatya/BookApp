//
//  SavedDetailView.swift
//  Bookstr
//
//  Created by MacBook on 24/10/2021.
//

import SwiftUI

struct SavedDetailView: View {
    @EnvironmentObject var jsonData: JsonData
    
    let book: BookViewModel
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                VStack(alignment: .leading) {
                    AsyncImage(url: URL(string: book.image)) { phase in
                        switch phase {
                        case .empty:
                            Color.purple.opacity(0.1)
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150)
                        case .failure(_):
                            Image(systemName: "exclamationmark.icloud")
                                .resizable()
                                .scaledToFit()
                        @unknown default:
                            Image(systemName: "exclamationmark.icloud")
                        }
                    }
                    .shadow(radius: 3, x: 0, y: 3)
                    .frame(width: 150, height: 200)
                    
                    Text("Page count: \(book.pageCount)")
                        .font(.headline)
                }
                
                VStack {
                    Text(book.title)
                        .font(.largeTitle.weight(.bold))
                        .multilineTextAlignment(.center)
                }
                
                Text(book.description)
                    .multilineTextAlignment(.center)
                    .padding(20)
                
                Link(destination: URL(string: book.previewLink)!) {
                    Text("Book Details Link")
                }
                
                Button(action: {
                    jsonData.jsonArray.removeAll(where: { $0.id == book.id })
                    jsonData.writeJSON()
                }) {
                    Text("Delete")
                        .foregroundColor(.red)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SavedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SavedDetailView(book: BookViewModel(id: "", title: "", subtitle: "", authors: [], description: "", image: "", publishedDate: "", pageCount: 0, previewLink: ""))
    }
}
