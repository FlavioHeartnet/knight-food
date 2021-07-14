//
//  SwiftUIView.swift
//  testAgiBank (iOS)
//
//  Created by Flavio Nogueira on 13/07/21.
//

import SwiftUI

struct ItemRestaurant: View {
    
    var restaurant: Restaurant
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            restaurant.image
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                .frame(height:150)
            HStack {
                VStack(alignment: .leading){
                    Text(NSLocalizedString(restaurant.name, comment: ""))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(NSLocalizedString("Entrega R$\(restaurant.deliveryTax) \(restaurant.deliveryTime)", comment: ""))
                        .font(.subheadline)
                        .foregroundColor(CustomColors.textColor)
                        
                }
                Spacer()
                HStack{
                    Text("\(restaurant.rate)")
                        .bold()
                        .font(.subheadline)
                        
                }
                .frame(width: 40, height: 40)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .background(CustomColors.textColor)
                .cornerRadius(50.0)
                
            }
            
            
            
        })
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRestaurant(restaurant: restaurants[0])
    }
}
