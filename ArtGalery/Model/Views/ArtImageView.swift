//
//  ArtImageView.swift
//  ArtGalery
//
//  Created by Tekla Matcharashvili on 22.12.23.
//
import SwiftUI

struct ArtImageView: View {
    // MARK: - Properties
    
    var imageName: String
    
    // MARK: - Body
    
    var body: some View {
        
    // MARK: - Image View
        
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .clipped()
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}
