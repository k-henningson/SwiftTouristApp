//
//  DetailsView.swift
//  VanTourism
//
//  Created by Kyra Henningson on 2022-12-11.
//

import SwiftUI

struct DetailsView: View {
    var place: PlaceModel
    var body: some View {
        ScrollView {
            Image(place.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(place.name)
                .font(.system(size: 24, weight: .bold))
            
            Text(place.description)
                .font(.system(size: 16))
            
        }
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var places = load("data.json") as [PlaceModel]
    static var previews: some View {
        DetailsView(place: places.first!)
    }
}
