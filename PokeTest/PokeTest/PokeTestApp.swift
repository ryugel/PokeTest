//
//  PokeTestApp.swift
//  PokeTest
//
//  Created by Augustin Diabira on 28/10/2022.
//

import SwiftUI

@main
struct PokeTestApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView(pkmn: PokemonData(pokemon: charmanderData))
            PokemonList()
        }
    }
}
