//
//  MyReadingListView.swift
//  MyReadingList
//
//  Created by MacBook on 24/10/2021.
//

import SwiftUI


struct MyReadingListView: View {
    var body: some View {
        Text(NSLocalizedString("ui.myReadingList.title", value: "My Reading List", comment: "title for the MyReadingList screen"))
            .font(.headline)
        Spacer()
        
        List {
            HStack{
                Button("+"){
                    //do nothing for now
                }
                Text("Add a book")
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyReadingListView()
    }
}
