//
//  PokemonData.swift
//  PokeTest
//
//  Created by Augustin Diabira on 28/10/2022.
//


import Foundation
import PokemonAPI
import SwiftUI



let charmanderData: PKMPokemon = load("charmander.json")
//5th pokedex generation.
let PokemonNumber = 649
let colorTypes: [String:Color] = [
    "bug": Color.green,
    "flying": Color.gray,
    "dragon": Color.brown,
    "fairy": Color.pink,
    "fire": Color.red,
    "ghost": Color.white,
    "ground": Color.brown,
    "normal": Color.gray,
    "psychic": Color.purple,
    "steel": Color.gray,
    "dark": Color.black,
    "electric": Color.yellow,
    "fighting": Color.orange,
    "grass": Color.green,
    "poison": Color.purple,
    "rock": Color.brown,
    "water": Color.blue,
    "ice": Color.cyan
]

class PokemonData: ObservableObject{
    
    @Published    var pokemon:PKMPokemon
    var id:Int?
  
    
    init(pokemon: PKMPokemon) {
        self.pokemon = pokemon
        self.id = pokemon.id
       
    }
  

    
  
}



func load<T: SelfDecodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    
    do {
        let decoder = T.decoder
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
