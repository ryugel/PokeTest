//
//  PokemonList.swift
//  PokeTest
//
//  Created by Augustin Diabira on 30/10/2022.
//

import SwiftUI
import PokemonAPI
import Kingfisher

struct PokemonList: View {
    @ObservedObject var listModel = PokemonListViewModel()
    @State var searchPokemon = ""
    var body: some View {
     NavigationView {
         List(listModel.orderPkmn.filter({($0.pokemon.name?.capitalized.contains(searchPokemon))! || searchPokemon.isEmpty}), id: \.id) {poke in
                
                VStack {
                    NavigationLink {
                        
                            PokemonView(pokemon: poke)
                        
                    } label: {
                        ContentView(pkmn: poke)
                    }
                }
           }.navigationTitle("Pokedex").searchable(text: $searchPokemon)
       }
    
        
    }
   
    }





struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}


