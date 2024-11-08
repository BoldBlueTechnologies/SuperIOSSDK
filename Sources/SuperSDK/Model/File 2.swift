//
//  File 2.swift
//  SuperSDK
//
//  Created by Oscar Aguilar on 08/11/24.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let attack: Int
    let name: String
    let imageUrl: String
}
