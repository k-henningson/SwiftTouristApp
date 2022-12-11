//
//  HomeListRow.swift
//  VanTourism
//
//  Created by Kyra Henningson on 2022-12-11.
//

import SwiftUI

struct HomeListRow: View {
    var place: PlaceModel
    var body: some View {
        
        HStack {
            Image(place.imageName)
                .resizable()
                .frame(width: 100, height: 80)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(4)
                .clipped()
            
            VStack(alignment: .leading) {
                
                Text(place.name)
                    .font(.system(size: 16, weight: .bold))
                
                
                Text(place.subtitle)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
        }
      
    }
}

struct HomeListRow_Previews: PreviewProvider {
    static var places = load("data.json") as [PlaceModel]
    static var previews: some View {
        HomeListRow(place: places.first!)
    }
}
