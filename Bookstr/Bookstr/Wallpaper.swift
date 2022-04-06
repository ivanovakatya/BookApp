//
//
//  Wallpaper.swift
//  Bookstr
//
//  Created by MacBook on 24/10/2021.
//

import SwiftUI

// MARK: Wallpaper
struct Wallpaper: View {
    @EnvironmentObject var jsonData: JsonData
    
    var body: some View {
        
        // If book available
        if jsonData.jsonArray.count >= 5 {
            ZStack {
                Image("books")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
            }
            .blur(radius: 10)
        }
        
        // if no book
        else {
            ZStack {
                Image("books")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
            }
        }
    }
}

// MARK: PreviewProvider
struct Wallpaper_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Wallpaper()
        }
    }
}
