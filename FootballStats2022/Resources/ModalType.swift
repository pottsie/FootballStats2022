//
//  ModalType.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/10/22.
//

import Foundation
import SwiftUI

enum PlayerModalType: Identifiable, View {
    
    case new
    case update(PlayerEntity)
    
    var id: String {
        switch self {
        case .new:
            return "New"
        case .update:
            return "Update"
        }
    }
    
    var body: some View {
        switch self {
        case .new:
            ProfileForm(profileFormVM: ProfileFormViewModel())
        case .update(let player):
            ProfileForm(profileFormVM: ProfileFormViewModel(currentProfile: player))
        }
    }
    
}
