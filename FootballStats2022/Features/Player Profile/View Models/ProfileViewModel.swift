//
//  ProfileViewModel.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/9/22.
//

import CoreData
import Foundation

class ProfileViewModel: ObservableObject {
    
    @Published var player: PlayerEntity
    
    let fetchRequest: NSFetchRequest<PlayerEntity> = NSFetchRequest(entityName: "PlayerEntity")
    
    init() {
        
        player = PlayerEntity(context: CoreDataManager.shared.persistenceContainer.viewContext)
        player.firstName_ = "George"
        player.lastName_ = "Jetson"
        player.position_ = "Goalie"
        player.jerseyNumber_ = "98"
        player.height_ = 177
        player.club_ = "Madrid"
        player.highSchool_ = "Southern"
        player.city_ = "New York"
        player.state_ = "Arizona"
        player.dateOfBirth_ = Date()
        
    }
    
    func loadPlayerData() {
     
        
     
    }
    
}
