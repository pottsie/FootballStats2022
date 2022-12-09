//
//  CustomTextFieldView.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/9/22.
//

import SwiftUI

struct CustomTextFieldView: View {
    let labelString: String
    @Binding var textValue: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(labelString.uppercased())
                .font(.caption)
                .foregroundColor(.secondary)
//                .padding(.horizontal)
            TextField("", text: $textValue)
                .textFieldStyle(.roundedBorder)
//                .foregroundColor(.black)
//                .padding(.horizontal)
//                .frame(height: 55)
//                .background(.gray).opacity(0.25)
//                .cornerRadius(10)
        }
//        .font(.system(size: 20))
//        .padding()
    }
}

struct CustomTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextFieldView(labelString: "First name", textValue: .constant("Mike"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
