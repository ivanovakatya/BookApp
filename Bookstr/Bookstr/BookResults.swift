//
//  BookResults.swift
//  Bookstr
//
//  Created by MacBook on 24/10/2021.
//

import SwiftUI

struct BookResults: View {
    let book: BookViewModel
    @EnvironmentObject var jsonData: JsonData
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: book.image)) { phase in
                switch phase {
                case .empty:
                    Color.purple.opacity(0.1)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                case .failure(_):
                    Image(systemName: "exclamationmark.icloud")
                        .resizable()
                        .scaledToFit()
                @unknown default:
                    Image(systemName: "exclamationmark.icloud")
                }
            }
            .shadow(radius: 3, x: 0, y: 3)
            .frame(height: 100)
            .frame(maxWidth: 75, maxHeight: .infinity, alignment: .top)
            
            if !(book.pageCount == 0) || !(book.title == "") {
                VStack(alignment: .leading, spacing: 8) {
                    VStack(alignment: .leading, spacing: -3) {
                        Text(book.title)
                            .font(.title3.weight(.bold))
                        
                        Text("\(book.pageCount)")
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                    
                    Text(book.description)
                        .font(.footnote)
                        .lineLimit(4)
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            }
        }
        .padding()
        .background(
            .ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous)
        )
        .frame(maxWidth: .infinity, maxHeight: 150)
        .padding(.vertical, 5)
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.clear))
    }
}
