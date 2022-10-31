//
//  PokemonTypeView.swift
//  PokeTest
//
//  Created by Augustin Diabira on 30/10/2022.
//

import SwiftUI
import PokemonAPI

struct PokemonTypeView: View {
    let type: PKMNamedAPIResource<PKMType>
    
    
        var body: some View {
            Text(type.name!).bold().font(.subheadline).foregroundColor(colorTypes[type.name!])
        }
    
}

struct PokemonTypeView_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            ForEach(charmanderData.types!, id: \.slot!){ colorType in
                PokemonTypeView(type: colorType.type!)
            }
            .padding()
        }
    }
}



