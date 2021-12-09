//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Vitor Mendes de Souza on 30/11/21.
//

import SwiftUI
import CoreData
import UIKit

struct HomeView: View {

    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
            NavigationView {
                if viewModel.isLoading {
                    ProgressView()
                } else {
                    List(viewModel.characters, id: \.id) { item in
                            HomeCell(character: item)
                                .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                                .listRowSeparator(.hidden)
                    }
                    .navigationBarHidden(true)
                }
            }
            .onAppear {
                viewModel.getCharacters()
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
