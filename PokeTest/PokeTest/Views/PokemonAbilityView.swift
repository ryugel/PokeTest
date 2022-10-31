//
//  PokemonAbilityView.swift
//  PokeTest
//
//  Created by Augustin Diabira on 31/10/2022.
//

import SwiftUI
import PokemonAPI

struct PokemonAbilityView: View {
    let ability: PKMNamedAPIResource<PKMAbility>
   
    var body: some View {
        Text("\(ability.name!)")
    }
}

struct PokemonAbilityView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ForEach(charmanderData.abilities!, id: \.slot!){ pokemon in
                PokemonAbilityView(ability: pokemon.ability!)
            }
           
        }
    }
}
