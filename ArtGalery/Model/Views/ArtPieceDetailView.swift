//
//  ArtPieceDetailView.swift
//  ArtGalery
//
//  Created by Tekla Matcharashvili on 22.12.23.
//

import SwiftUI

struct ArtPieceDetailView: View {
    // MARK: - Properties
    
    var artPiece: ArtPiece
    
    // MARK: - Body
    
    var body: some View {
    // MARK: - Main View Structure
        
        VStack {
    // MARK: - Art Image
            
            Image(artPiece.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
                .padding()
            
    // MARK: - Art Title
            
            Text(artPiece.imageName)
                .font(.title)
                .padding()
            
    // MARK: - Art Description
            
            Text(artPiece.description)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        }
    // MARK: - Navigation Bar Title
        
        .navigationBarTitle(Text(artPiece.imageName), displayMode: .inline)
    }
}
