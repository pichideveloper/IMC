//
//  ApiNetwork.swift
//  iosCurse
//
//  Created by Joaquin Diaz on 8/09/24.
//

import Foundation

class ApiNetwork {
    
    struct Wrapper: Codable {
        let response: String
        let results: [Superhero]
    }
    struct Superhero: Codable , Identifiable{
        let id : String
        let name : String
    }
    
    
    
    func getHeroesbyQuery (query: String) async throws -> Wrapper{
        let url = URL(string:"https://superheroapi.com/api/36a3e3d013eca45be5e442f84fd78851/search/\(query)")!

        let (data, _) = try await URLSession.shared.data(from: url)
        let wrapper = try JSONDecoder().decode(Wrapper.self, from: data)
        return wrapper
        
    }
}
