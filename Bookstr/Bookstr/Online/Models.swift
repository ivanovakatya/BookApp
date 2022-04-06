//
//  Models.swift
//  Bookstr
//
//  Created by MacBook on 24/10/2021.
//

import SwiftUI
import Foundation

// MARK: - User
struct User: Codable {
  var kind: String?
  var totalItems: Int?
  var items: [Item]?
}

// MARK: - Item
struct Item: Codable, Equatable {
  let id: String
  var kind, etag: String?
  var selfLink: String?
  var volumeInfo: VolumeInfo?
  var saleInfo: SaleInfo?
  var accessInfo: AccessInfo?
  var searchInfo: SearchInfo?
}

// MARK: - AccessInfo
struct AccessInfo: Codable, Equatable {
  var country, viewability: String?
  var embeddable, publicDomain: Bool?
  var textToSpeechPermission: String?
  var epub, pdf: Epub?
  var webReaderLink: String?
  var accessViewStatus: String?
  var quoteSharingAllowed: Bool?
}

// MARK: - Epub
struct Epub: Codable, Equatable {
  var isAvailable: Bool?
}

// MARK: - SaleInfo
struct SaleInfo: Codable, Equatable {
  var country, saleability: String?
  var isEbook: Bool?
}

// MARK: - SearchInfo
struct SearchInfo: Codable, Equatable {
  var textSnippet: String?
}

// MARK: - VolumeInfo
struct VolumeInfo: Codable, Equatable {
  var title, subtitle: String?
  var authors: [String]?
  var publisher, publishedDate, volumeInfoDescription: String?
  var industryIdentifiers: [IndustryIdentifier]?
  var readingModes: ReadingModes?
  var pageCount: Int?
  var printType: String?
  var categories: [String]?
  var maturityRating: String?
  var allowAnonLogging: Bool?
  var contentVersion: String?
  var panelizationSummary: PanelizationSummary?
  var imageLinks: ImageLinks?
  var language: String?
  var previewLink, infoLink: String?
  var canonicalVolumeLink: String?
  
  enum CodingKeys: String, CodingKey {
    case title, authors, publisher, publishedDate
    case volumeInfoDescription = "description"
    case industryIdentifiers, readingModes, pageCount, printType, categories, maturityRating, allowAnonLogging, contentVersion, panelizationSummary, imageLinks, language, previewLink, infoLink, canonicalVolumeLink
  }
}

// MARK: - ImageLinks
struct ImageLinks: Codable, Equatable {
  var smallThumbnail, thumbnail: String?
}

// MARK: - IndustryIdentifier
struct IndustryIdentifier: Codable, Equatable {
  var type, identifier: String?
}

// MARK: - PanelizationSummary
struct PanelizationSummary: Codable, Equatable {
  var containsEpubBubbles, containsImageBubbles: Bool?
}

// MARK: - ReadingModes
struct ReadingModes: Codable, Equatable {
  var text, image: Bool?
}

