//
//  BookDetailView.swift
//  Bookstr
//
//  Created by MacBook on 24/10/2021.
//

import SwiftUI

struct BookDetailView: View {
    @EnvironmentObject var jsonData: JsonData
    @Environment(\.presentationMode) var presentationMode
    
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
                
                if !(book.previewLink == "No link") {
                    Link(destination: URL(string: book.previewLink)!) {
                        Text("Book Details Link")
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {
                    jsonData.jsonArray.append(book)
                    jsonData.writeJSON()
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "plus")
                        .imageScale(.large)
                        .padding(6)
                        .background(Circle().fill(.ultraThinMaterial))
                        .shadow(color: .gray.opacity(0.2), radius: 3, x: 0, y: 3)
                }
            }
        })
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: BookViewModel(item:
                                            Item(id: "",
                                                 kind: "",
                                                 etag: "",
                                                 selfLink: "",
                                                 volumeInfo:
                                                    VolumeInfo(title: "Harry Potter",
                                                               authors: [""],
                                                               publisher: "",
                                                               publishedDate: "",
                                                               volumeInfoDescription: "Eigentlich hatte Harry geglaubt, er sei ein ganz normaler Junge. Zumindest bis zu seinem elften Geburtstag. Da erfährt er, dass er sich an der Schule für Hexerei und Zauberei einfinden soll. Und warum? Weil Harry ein Zauberer ist. Und so wird für Harry das erste Jahr in der Schule das spannendste, aufregendste und lustigste in seinem Leben. Er stürzt von einem Abenteuer in die nächste ungeheuerliche Geschichte, muss gegen Bestien, Mitschüler und Fabelwesen kämpfen. Da ist es gut, dass er schon Freunde gefunden hat, die ihm im Kampf gegen die dunklen Mächte zur Seite stehen.",
                                                               industryIdentifiers: [
                                                                IndustryIdentifier(type: "",
                                                                                   identifier: "")],
                                                               readingModes:
                                                                ReadingModes(text: false,
                                                                             image: false),
                                                               pageCount: 368,
                                                               printType: "",
                                                               categories: [""],
                                                               maturityRating: "",
                                                               allowAnonLogging: false,
                                                               contentVersion: "",
                                                               panelizationSummary:
                                                                PanelizationSummary(containsEpubBubbles: false,
                                                                                    containsImageBubbles: false),
                                                               imageLinks: ImageLinks(smallThumbnail: "",
                                                                                      thumbnail: "http://books.google.com/books/content?id=L8kwjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"),
                                                               language: "",
                                                               previewLink: "",
                                                               infoLink: "",
                                                               canonicalVolumeLink: ""),
                                                 saleInfo:
                                                    SaleInfo(country: "",
                                                             saleability: "",
                                                             isEbook: false),
                                                 accessInfo:
                                                    AccessInfo(country: "",
                                                               viewability: "",
                                                               embeddable: false,
                                                               publicDomain: false,
                                                               textToSpeechPermission: "",
                                                               epub:
                                                                Epub(
                                                                    isAvailable: false),
                                                               pdf:
                                                                Epub(
                                                                    isAvailable: false),
                                                               webReaderLink: "",
                                                               accessViewStatus: "",
                                                               quoteSharingAllowed: false),
                                                 searchInfo:
                                                    SearchInfo(
                                                        textSnippet: ""))))
    }
}
