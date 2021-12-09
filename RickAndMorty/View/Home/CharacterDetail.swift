//
//  CharacterDetail.swift
//  RickAndMorty
//
//  Created by Vitor Mendes de Souza on 08/12/21.
//

import SwiftUI
import NukeUI

struct CharacterDetail: View {
    
    var character: Character
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

     var backButton : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
         }) {
             HStack {
                 Image(systemName: "chevron.backward")
                 Text("Voltar")
             }
         }
     }
    
    var body: some View {
            VStack {
                LazyImage(source: character.image ?? "")
                    .frame(width: 120, height: 120)
                    .padding(.top, 8)
                Text(character.name ?? "")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                Text((character.species?.rawValue ?? "") + " - " + (character.status?.rawValue ?? ""))
                    .font(.system(size: 16, weight: .regular, design: .default))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                Text("Ultima localização:")
                    .font(.system(size: 16, weight: .regular, design: .default))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                Text(character.location?.name ?? "")
                    .font(.system(size: 16, weight: .regular, design: .default))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                Spacer()
                    .background(.red)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton)
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(character: Character(id: 0, name: "Rick", status: .alive, species: .human, type: "", gender: .male, origin: nil, location: nil, image: "defaultImage", episode: [], url: "", created: ""))
    }
}

