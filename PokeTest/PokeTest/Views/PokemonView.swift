//
//  PokemonView.swift
//  PokeTest
//
//  Created by Augustin Diabira on 31/10/2022.
//

import SwiftUI
import Kingfisher

struct PokemonView: View {
    let pokemon:PokemonData
    var body: some View {
        
            Form {
                // MARK: - Details, Jump to definition for more details about the code.
           details
                // MARK: - Abilities, Jump to definition for more details about the code.
                abilities
                
                // MARK: - Shiny Sprites, Jump to definition for more details about the code.
                shiny
                
                // MARK: - Physic, Jump to definition for more details about the code.
                physic
                
            }.navigationTitle("#\(pokemon.pokemon.id ?? 0)" + " \(pokemon.pokemon.name ?? "No Data")")
        
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(pokemon: PokemonData(pokemon: charmanderData))
    }
}
