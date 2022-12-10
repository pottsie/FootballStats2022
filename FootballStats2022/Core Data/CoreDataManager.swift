//
//  CoreDataManager.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/9/22.
//

import CoreData
import Foundation

class CoreDataManager {
    
    let persistenceContainer: NSPersistentContainer
    
    static let shared = CoreDataManager()
    
    init() {
        persistenceContainer = NSPersistentContainer(name: "FootballStatsModel")
        persistenceContainer.loadPersistentStores { _, error in
            if let error {
                print("Error loading persistent stores \(error.localizedDescription)")
            }
        }
    }
    
}
