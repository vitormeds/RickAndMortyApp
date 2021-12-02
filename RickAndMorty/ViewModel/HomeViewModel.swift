//
//  HomeViewModel.swift
//  RickAndMorty
//
//  Created by Vitor Mendes de Souza on 01/12/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var characters: [Character] = []
    @Published var isLoading = false
    @Published var error: Error? = nil
    
    func getCharacters() {
        isLoading = true
        NetworkService.request(url: "https://rickandmortyapi.com/api/character", method: .get, obj: BaseRequestModel.self) { [self] result in
            self.characters = result.results ?? []
            self.isLoading = false
        } error: { e in
            self.error = e
            self.isLoading = false
        }
    }
    
}
