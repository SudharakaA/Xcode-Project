//
//  MenuItem.swift
//  Restaurent Menu App
//
//  Created by Sudharaka Ashen Edussuriya on 2024-12-07.
//

import Foundation

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let price: Double
    let imageName: String
}
