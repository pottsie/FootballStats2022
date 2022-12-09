//
//  ProfileForm.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/9/22.
//

import SwiftUI

struct ProfileForm: View {
    @StateObject private var profileFormVM = ProfileFormViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                
                CustomTextFieldView(labelString: "First name", textValue: $profileFormVM.newFirstName)
                CustomTextFieldView(labelString: "Last name", textValue: $profileFormVM.newLastName)
                CustomTextFieldView(labelString: "Position", textValue: $profileFormVM.newPosition)
                CustomTextFieldView(labelString: "City", textValue: $profileFormVM.newCity)
                CustomTextFieldView(labelString: "State", textValue: $profileFormVM.newState)
                CustomTextFieldView(labelString: "Club", textValue: $profileFormVM.newClub)
                CustomTextFieldView(labelString: "High School", textValue: $profileFormVM.newHighSchool)
                CustomNumberFieldView(labelString: "Height (cm)", numberValue: $profileFormVM.newHeight)
                
                // need to look at a custom view for this, to match the others
                DatePicker("Date of Birth",
                           selection: $profileFormVM.newDateOfBirth,
                           in: ...Date(),
                           displayedComponents: [.date])
                
                Spacer()
            }
            .padding(.horizontal)
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfileForm_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ProfileForm()
        }
    }
}
