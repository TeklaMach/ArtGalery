//
//  ArtPiece.swift
//  ArtGalery
//
//  Created by Tekla Matcharashvili on 22.12.23.
//

import Foundation

// MARK: - ArtPiece Model

struct ArtPiece: Identifiable {
    var id = UUID()
    var imageName: String
    var description: String
}
