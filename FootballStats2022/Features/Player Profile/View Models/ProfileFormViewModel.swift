//
//  ProfileFormViewModel.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/9/22.
//

import Foundation

class ProfileFormViewModel: ObservableObject {
    
    @Published var newFirstName: String
    @Published var newLastName: String
    @Published var newCity: String
    @Published var newState: String
    @Published var newPosition: String
    @Published var newClub: String
    @Published var newHighSchool: String
    @Published var newJerseyNumber: String
    @Published var newHeight: Int
    @Published var newDateOfBirth: Date
    @Published var isUpdating: Bool = false
    
    init() {
        newFirstName = ""
        newLastName = ""
        newCity = ""
        newState = ""
        newPosition = ""
        newClub = ""
        newHighSchool = ""
        newJerseyNumber = ""
        newDateOfBirth = Date()
        newHeight = 165
    }
    
    init(currentProfile: PlayerEntity) {
        newFirstName = currentProfile.firstName
        newLastName = currentProfile.lastName
        newCity = currentProfile.city
        newState = currentProfile.state
        newPosition = currentProfile.position
        newClub = currentProfile.club
        newHighSchool = currentProfile.highSchool
        newJerseyNumber = currentProfile.jerseyNumber
        newDateOfBirth = currentProfile.dateOfBirth
        newHeight = currentProfile.height
        
        isUpdating = true
    }
    
}
