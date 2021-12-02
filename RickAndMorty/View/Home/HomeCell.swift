//
//  HomeCell.swift
//  RickAndMorty
//
//  Created by Vitor Mendes de Souza on 01/12/21.
//

import Foundation
import SwiftUI
import NukeUI

struct HomeCell: View {
    
    var character: Character

    var body: some View {
        return HStack {
            LazyImage(source: character.image ?? "")
                .frame(width: 80, height: 80)
                .padding(.leading, 8)
            VStack {
                Text(character.name ?? "")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 8)
                Text((character.species?.rawValue ?? "") + " - " + (character.status?.rawValue ?? ""))
                    .font(.system(size: 16, weight: .regular, design: .default))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 8)
                Text("Ultima localização:")
                    .font(.system(size: 16, weight: .regular, design: .default))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 8)
                Text(character.location?.name ?? "")
                    .font(.system(size: 16, weight: .regular, design: .default))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 8)
            }
        }
    }
}

struct HomeCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeCell(character: Character(id: 0, name: "Rick", status: .alive, species: .human, type: "", gender: .male, origin: nil, location: nil, image: "defaultImage", episode: [], url: "", created: "")).previewLayout(.fixed(width: 300, height: 80))
    }
}
