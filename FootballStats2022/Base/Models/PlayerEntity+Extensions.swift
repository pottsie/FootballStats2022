//
//  PlayerEntity+Extensions.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/9/22.
//

import Foundation

extension PlayerEntity {
    
    // Convenience accessors
    var firstName: String {
        firstName_ ?? "No name"
    }
    
    var lastName: String {
        lastName_ ?? "No name"
    }
    
    var position: String {
        position_ ?? "N/A"
    }
    
    var city: String {
        city_ ?? "No city"
    }
    
    var state: String {
        state_ ?? "No state"
    }
    
    var club: String {
        club_ ?? "No club"
    }
    
    var highSchool: String {
        highSchool_ ?? "No high school"
    }
    
    var jerseyNumber: String {
        jerseyNumber_ ?? "N/A"
    }
    
    var height: Int {
        get {
            Int(height_)
        }
        set {
            height_ = Int16(newValue)
        }
    }
    
    var dateOfBirth: Date {
        dateOfBirth_ ?? Date()
    }
    
    // Computed properties
    var fullName: String {
        firstName + " " + lastName
    }
}
