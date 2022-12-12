//
//  PlayerListView.swift
//  FootballStats2022
//
//  Created by Michael Potts on 12/11/22.
//

import SwiftUI

struct PlayerListView: View {
    @StateObject private var playerListVM = PlayerListViewModel()
    
    var body: some View {
        NavigationStack {
            
            VStack {
                
                if playerListVM.players.isEmpty {
                    VStack {
                        Text("Tap Add Player above to add your first player.")
                            .italic()
                            .foregroundColor(.red)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .frame(width: 250)
                    }
                } else {
                    
                    List {
                        ForEach(playerListVM.players) { player in
                            NavigationLink(value: player) {
                                PlayerListItemView()
                            }
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Team")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        //
                    } label: {
                        Symbols.settings
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //
                    } label: {
                        Text("Add Player")
                    }
                }
            }
            .navigationDestination(for: PlayerEntity.self) { player in
                ProfileView()
            }
        }
    }
}

struct PlayerListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
    }
}
