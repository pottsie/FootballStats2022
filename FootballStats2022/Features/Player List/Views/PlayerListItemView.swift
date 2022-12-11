//
//  PlayerListItemView.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/11/22.
//

import SwiftUI

struct PlayerListItemView: View {
    var body: some View {
        HStack {
            ProfileImageView(imageSize: 75, stroke: .primary, shadow: .primary)
            
            VStack(alignment: .leading) {
                
                Text("Noah Potts")
                    .font(.title2)
                Text("Central Defensive Midfielder")
                
            }
            .padding(.leading, 5)
            
            Spacer()
        }
    }
}

struct PlayerListItemView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListItemView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
