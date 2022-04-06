//
//  JsonData.swift
//  Bookstr
//
//  Created by MacBook on 24/10/2021.
//

import Foundation

class JsonData: ObservableObject {
  @Published var jsonArray: [BookViewModel] = []

  init() {
    jsonArray = load("list.json") ?? []
  }

  func load(_ filename: String) -> [BookViewModel]? {

    guard let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
      fatalError("Couldn't find the location...")
    }
    let url = URL(fileURLWithPath: documentDirectory.absoluteString)
    let filePath = url.appendingPathComponent(filename)

    do {
      let data = try String(contentsOf: filePath).data(using: .utf8)
      return try JSONDecoder().decode([BookViewModel].self, from: data!)
    } catch {
      print(#line, #file.components(separatedBy: "/").last!, error.localizedDescription)
      return nil
    }
  }

  // function to write the json data into the file manager
  func writeJSON() {
    guard let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }

    let url = URL(fileURLWithPath: documentDirectory.absoluteString)
    let filePath = url.appendingPathComponent("list.json")

    do {
      try JSONEncoder().encode(jsonArray).write(to: filePath)
    } catch {
      print(#line, #file.components(separatedBy: "/").last!, error.localizedDescription)
    }
  }

}

// Function to load data
extension Bundle {
  static func load<T: Decodable>(_ filename: String) -> T {

    let readURL = Bundle.main.url(forResource: filename, withExtension: "json")! //Example json file in our bundle
    guard let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
      fatalError("Couldn't find the location...")
    }
    let filePath = documentDirectory.appendingPathComponent(filename)
    do {
      try Data(contentsOf: readURL).write(to: filePath)
    } catch {
      print(#line, #file.components(separatedBy: "/").last!, error.localizedDescription)
    }
    return try! JSONDecoder().decode(T.self, from: Data(contentsOf: filePath))
  }
}
