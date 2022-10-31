//
//  Ext.swift
//  PokeTest
//
//  Created by Augustin Diabira on 30/10/2022.
//

import Foundation
import SwiftUI
import PokemonAPI
import Kingfisher


extension PokemonView {
    var details: some View {
        Section("Details") {
            if pokemon.pokemon.types != nil {
                VStack {
                    ForEach(pokemon.pokemon.types!, id: \.slot!){ colorType in
                        HStack {
                            ZStack {
                                Rectangle().frame(width: 169, height: 169).cornerRadius(50).foregroundColor(colorTypes[(colorType.type?.name)!])
                                KFImage(URL(string: pokemon.pokemon.sprites?.frontDefault ?? "ke"))
                            }
                            ZStack {
                                Rectangle().foregroundColor(colorTypes[(colorType.type?.name)!]).frame(width: 169, height: 169).cornerRadius(50)
                                KFImage(URL(string: pokemon.pokemon.sprites?.backDefault ?? "ke"))
                            }

                        }
                    }
                    ForEach(pokemon.pokemon.types!, id: \.slot!){ colorType in
                        PokemonTypeView(type: colorType.type!)
                    }
                }
            }
            
        }
    }
    
    var abilities: some View {
        Section("Abilities") {
            if (pokemon.pokemon.abilities != nil)  {
                ForEach(pokemon.pokemon.abilities!, id: \.slot!){ colorType in
                    PokemonAbilityView(ability: colorType.ability!)
                }
            }
        }
    }
    
    var shiny: some View {
        Section("Shiny Sprites"){
            HStack {
                if pokemon.pokemon.sprites != nil {
                    KFImage(URL(string: (pokemon.pokemon.sprites?.frontShiny)!))
                    KFImage(URL(string: (pokemon.pokemon.sprites?.backShiny)!))
                    KFImage(URL(string: (pokemon.pokemon.sprites?.frontShiny)!))
                }
                
                
               
            }
        }
    }
    var physic: some View {
        Section("Physic"){
            VStack {
                
                HStack {
                    Text( "\(pokemon.pokemon.height!)m").bold()
                }
                HStack {
                    Text( "\(Double(pokemon.pokemon.weight!), specifier: "%0.2f")kg").bold()
                }
            }
        }

    }
    
}

