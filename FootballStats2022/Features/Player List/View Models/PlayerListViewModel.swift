//
//  PlayerListViewModel.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/11/22.
//

import CoreData
import Foundation

class PlayerListViewModel: ObservableObject {
    
    @Published var players: [PlayerEntity] = []
    
    init() {
        
        loadPlayers()
        
    }
    
    func loadPlayers() {
        
        let fetchRequest: NSFetchRequest<PlayerEntity> = NSFetchRequest(entityName: "PlayerEntity")
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "lastName_", ascending: true), NSSortDescriptor(key: "firstName_", ascending: true)]
        
        do {
            players = try CoreDataManager.shared.persistenceContainer.viewContext.fetch(fetchRequest)
        } catch {
            players = []
        }
        
    }
    
}
