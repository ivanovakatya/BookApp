//
//  Bookstr.swift
//  Bookstr
//
//  Created by MacBook on 24/10/2021.
//
import SwiftUI

@main
struct Bookstr: App {
    var body: some Scene {
        WindowGroup {
            MyReadingListView()
                .environmentObject(JsonData())
        }
    }
}
