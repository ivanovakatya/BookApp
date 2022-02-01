//
//  CoreDataManager.swift
//  MyReadingList
//
//  Created by MacBook on 29/01/2022.
//

import Foundation
import CoreData

// code to simlate error with the search of a book
enum SaveBookError: Error {
    case databaseError
}

class CoreDataManager {
    let persistentContainer: NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "MyReadingList")
        persistentContainer.loadPersistentStores { (description,error) in
            if let error = error {
                fatalError("Core Data Store failed \(error.localizedDescription)")
            }
        }
    }
    
    func saveBook(title: String) throws {
        let book = Book(context: persistentContainer.viewContext)
        book.title = title
        //throw SaveBookError.databaseError // call for the error code
        try persistentContainer.viewContext.save()
    }
}
