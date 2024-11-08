//
//  File 2.swift
//  SuperSDK
//
//  Created by Oscar Aguilar on 08/11/24.
//

import Foundation

struct Pokemon: Decodable {
    let count: Int
    let next: String
    let previous: String?
    let results: [PokemonInfo]
}

struct PokemonInfo: Codable {
    let name: String
    let url: String
}
