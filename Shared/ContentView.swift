//
//  ContentView.swift
//  Shared
//
//  Created by Flavio Nogueira on 04/07/21.
//

import SwiftUI

struct ContentView: View {
    var rgbPrimary = Color(red: 38.0, green: 107.0, blue: 255.0)
    var body: some View {
        List(restaurants) { restaurant in
            ItemRestaurant(restaurant: restaurant)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
