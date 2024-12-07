//
//  MenuItemDetailView.swift
//  Restaurent Menu App
//
//  Created by Sudharaka Ashen Edussuriya on 2024-12-07.
//

import SwiftUI

struct MenuItemDetailView: View {
    let menuItem: MenuItem

    var body: some View {
        VStack {
            Image(menuItem.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text(menuItem.name)
                .font(.largeTitle)
                .padding()
            Text(menuItem.description)
                .font(.body)
                .padding()
            Text("$\(menuItem.price, specifier: "%.2f")")
                .font(.title)
                .padding()
            Spacer()
        }
        .padding()
        .navigationTitle(menuItem.name)
    }
}
