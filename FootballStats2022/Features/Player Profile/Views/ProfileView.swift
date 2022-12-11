//
//  ProfileView.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/8/22.
//

import SwiftUI

struct ProfileView: View {
    @StateObject private var profileVM = ProfileViewModel()
    @State private var renderedImage: Image?
    
    @State var modalType: PlayerModalType?
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
                profile
                    .onAppear {
                        let renderer = ImageRenderer(content: profile)
                        renderer.scale = 3
                        if let image = renderer.cgImage {
                            renderedImage = Image(decorative: image, scale: 1.0)
                        }
                    }
                
                Spacer()
            }
            .sheet(item: $modalType, content: { $0 })
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    if let renderedImage {
                        ShareLink(item: renderedImage,
                                  message: Text("Profile for \(profileVM.player.fullName)"),
                                  preview: SharePreview("Profile for \(profileVM.player.fullName)", image: renderedImage))
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // Code for editing the profile
                        modalType = .update(profileVM.player)
                    } label: {
                        Text("Edit")
                    }
                }
            }
        }
    }
    
    var profile: some View {
        Group {
            ProfileImageView()
                .overlay {
                    Button {
                        // Add code for selecting a new profile image
                        print("Change image")
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .shadow(color: .white, radius: 15, x: 0, y: 0)
                    }
                    .offset(x: 93, y: 93)
                }
            
            VStack(spacing: 5) {
                Text(profileVM.player.fullName)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(profileVM.player.jerseyNumber)
                    .font(.title)

                Text(profileVM.player.position)
                    .font(.title2)
                Text("\(profileVM.player.height) cm")
                Text("September 20, 1966")
                Text(profileVM.player.club)
                Text(profileVM.player.highSchool)
                Text("\(profileVM.player.city), \(profileVM.player.state)")
            }
            .font(.system(size: 18, weight: .regular, design: .rounded))
            .padding(.top)
            .padding(.horizontal)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
