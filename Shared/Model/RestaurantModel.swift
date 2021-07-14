//
//  RestaurantModel.swift
//  testAgiBank (iOS)
//
//  Created by Flavio Nogueira on 14/07/21.
//

import Foundation
import SwiftUI

struct  Restaurant: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var deliveryTax: String
    var deliveryTime: String
    var rate: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
