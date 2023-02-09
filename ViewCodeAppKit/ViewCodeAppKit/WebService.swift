//
//  WebService.swift
//  ViewCodeAppKit
//
//  Created by Julia Alberti Maia on 08/02/23.
//

import Foundation

enum NetworkError: Error {
    case invalidUrl
    case badRequest
}

class Webservice {
    func fetchRandomFact() async throws -> Fact? {
        guard let url = URL(string: "https://dog-facts-api.herokuapp.com/api/v1/resources/dogs?number=1") else {
            throw NetworkError.invalidUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
            
            throw NetworkError.badRequest
        }
        
        return try JSONDecoder().decode([Fact].self, from: data).first
    }
}

