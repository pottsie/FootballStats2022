//
//  ProfileViewModel.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/9/22.
//

import CoreData
import Foundation

class ProfileViewModel: ObservableObject {
    
    @Published var player: PlayerEntity?
    
    let fetchRequest: NSFetchRequest<PlayerEntity> = NSFetchRequest(entityName: "PlayerEntity")
    
    
    init() {
        
        loadPlayerData()
        
    }
    
    func loadPlayerData() {
        
        do {
            let playerData = try CoreDataManager().persistenceContainer.viewContext.fetch(fetchRequest)
            player = playerData.first
        } catch {
            return
        }
        
    }
    
}
