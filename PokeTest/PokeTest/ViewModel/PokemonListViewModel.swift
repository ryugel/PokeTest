//
//  PokemonListViewModel.swift
//  PokeTest
//
//  Created by Augustin Diabira on 31/10/2022.
//

import Foundation
import PokemonAPI

class PokemonListViewModel: ObservableObject {
   @Published var orderPkmn: [PokemonData] = []
   
    init(){
        
        loadPokemonInOrder()
        
        
    }
   
    public func loadPokemonInOrder() {
        for i in 1...PokemonNumber {
            PokemonAPI().pokemonService.fetchPokemon(i){ [self] result in
                switch result {
                case .success(let pokemon):
                    
                    DispatchQueue.main.async { [self] in
                        self.orderPkmn.append(PokemonData(pokemon: pokemon))
                        self.orderPkmn = orderPkmn.sorted(by: {$0.id! < $1.id ?? 0})
                    }
                   
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
       }
    }
    
    

    
  
    

    
}

