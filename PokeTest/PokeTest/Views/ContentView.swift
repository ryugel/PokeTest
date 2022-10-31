//
//  ContentView.swift
//  PokeTest
//
//  Created by Augustin Diabira on 28/10/2022.
//

import SwiftUI
import PokemonAPI
import Kingfisher




struct ContentView: View {
    @ObservedObject var pkmn:PokemonData

    var body: some View {
        HStack {
          
            if (pkmn.pokemon.types != nil) && pkmn.pokemon.sprites != nil {
                ZStack {
                    
                    ForEach(pkmn.pokemon.types!, id: \.slot!){ colorType in
                        Rectangle().foregroundColor(colorTypes[(colorType.type?.name)!]).frame(width: 129, height: 129).cornerRadius(50)
                    }
                    KFImage(URL(string: pkmn.pokemon.sprites?.frontDefault ?? "")).resizable().frame(width: 89, height: 89)
                    
                }
            }
            VStack {
               
                    HStack {
                        Text("#\(pkmn.pokemon.id ?? 0)")
                        Text(pkmn.pokemon.name?.capitalized  ?? "no value")
                    }.fontWeight(.heavy).foregroundColor(.black)
               
                if pkmn.pokemon.types != nil {
                    ForEach(pkmn.pokemon.types!, id: \.slot!){ colorType in
                        PokemonTypeView(type: colorType.type!)
                    }
                }
            }
                    }
       
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView(pkmn: PokemonData(pokemon: charmanderData))
       
    }
}

