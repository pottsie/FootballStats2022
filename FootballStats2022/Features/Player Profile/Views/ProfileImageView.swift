//
//  ProfileImageView.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/8/22.
//

import SwiftUI

struct ProfileImageView: View {
    var size: CGFloat
    var strokeColor: Color
    var shadowColor: Color
    var profileImage: Image
    
    init(image: Image = Image("sampleProfileImage"), imageSize: CGFloat = 250, stroke: Color = .primary, shadow: Color = .primary) {
        profileImage = image
        size = imageSize
        strokeColor = stroke
        shadowColor = shadow
    }
    
    var body: some View {
        profileImage
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(lineWidth: size < 100 ? 1 : 3)
                    .foregroundColor(strokeColor)
            }
            .shadow(color: shadowColor, radius: size < 100 ? 5 : 10, x: 0, y: 0)
    }
}

struct ProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImageView()
    }
}
