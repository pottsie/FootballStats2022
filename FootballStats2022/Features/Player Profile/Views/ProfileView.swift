//
//  ProfileView.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/8/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var renderedImage: Image?
    
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
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    if let renderedImage {
//                        ShareLink(item: renderedImage, preview: SharePreview("Profile"))
                        ShareLink(item: renderedImage,
                                  message: Text("Profile for Noah Potts"),
                                  preview: SharePreview("Profile", image: renderedImage))
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // Code for editing the profile
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
            
            VStack(spacing: 5) {
                Text("Michael Potts")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Central Defender")
                    .font(.title)
                Text("September 20, 1966")
                Text("165 cm")
                Text("South County Athletic Association")
                Text("South County High School")
                Text("Lorton, VA")
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
