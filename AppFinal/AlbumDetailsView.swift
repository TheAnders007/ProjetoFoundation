//
//  AlbumDetailsView.swift
//  AppFinal
//
//  Created by User on 24/10/23.
//

import SwiftUI

struct AlbumDetailsView: View {
         
    @State var displayWikipediaText: Bool = false
    
    
        
    var body: some View {
       
        .scrollContentBackground(.hidden)
        .background {
            Image("MEDICINAIS")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(.ultraThinMaterial)
        }
        .navigationTitle("MEDICINAIS")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.visible, for: .navigationBar)
//        .toolbar(.hidden, for: .tabBar)
        .toolbar {
            Button {
                displayWikipediaText = true
            } label: {
                Image(systemName: "info.circle")
            }
        }
       
    }
    
    private func makeRow(for song: String) -> some View {
        HStack {
            Text(song)
            Spacer()
        }
    }
    
}

struct AlbumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            NavigationStack {
                AlbumDetailsView(album: Album.all.first(where: { $0.name == "Please Please Me" })!)
            }
        }
    }
}
