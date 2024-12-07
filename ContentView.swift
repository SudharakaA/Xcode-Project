//
//  ContentView.swift
//  Restaurent Menu App
//
//  Created by Sudharaka Ashen Edussuriya on 2024-12-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(sampleMenu) { item in
                NavigationLink(destination: MenuItemDetailView(menuItem: item)) {
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text("$\(item.price, specifier: "%.2f")")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
        }
    }
}

