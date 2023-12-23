//
//  ArtGalleryView.swift
//  ArtGalery
//
//  Created by Tekla Matcharashvili on 22.12.23.
//

import SwiftUI

struct ArtGalleryView: View {
    // MARK: - Properties
    
    @State private var artPieces: [ArtPiece] = [
        ArtPiece(imageName: "Almond Blossom", description: "A surreal masterpiece by Salvador Dali."),
        ArtPiece(imageName: "Starry Night", description: "A famous painting by Vincent van Gogh."),
        ArtPiece(imageName: "Irises", description: "A famous painting by Vincent van Gogh."),
        ArtPiece(imageName: "Girl With A Pearl Earring", description: "A surreal masterpiece by Johannes Vermeer."),
        ArtPiece(imageName: "The Birth of Venus", description: "A surreal masterpiece by Sandro Botticelli.")
    ]
    
    @State private var scale: CGFloat = 1.0
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
    // MARK: - Horizontal Scroll View
            
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(artPieces) { artPiece in
                        NavigationLink(destination: ArtPieceDetailView(artPiece: artPiece)) {
                            // MARK: - Art Image View
                            ArtImageView(imageName: artPiece.imageName)
                                .gesture(MagnificationGesture().onChanged { scale in
                                    self.scale = min(max(scale, 0.5), 3.0)
                                })
                                .scaleEffect(scale)
                                .frame(width: 200, height: 200)
                        }
                    }
                }
                .padding()
            }
            
    // MARK: - Navigation Title
            
            .navigationTitle("Art Gallery")
        }
    }
}




