//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Vitor Mendes de Souza on 30/11/21.
//

import SwiftUI
import CoreData

struct HomeView: View {

    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        GeometryReader { view in
            NavigationView {
                List(viewModel.characters, id: \.id) { item in
                    HomeCell(character: item)
                }
            }
            .onAppear {
                viewModel.getCharacters()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
