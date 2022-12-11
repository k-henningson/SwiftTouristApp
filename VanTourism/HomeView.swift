//
//  HomeView.swift
//  VanTourism
//
//  Created by Kyra Henningson on 2022-12-11.
//

import SwiftUI

struct HomeView: View {
    @State private var places = load("data.json") as [PlaceModel]
    
    var body: some View {
        NavigationView {
            
            
            List{
                
                ForEach(places) { place in
                    NavigationLink{
                    DetailsView(place: place)
                    }label: {
                        HomeListRow(place: place)
                    }
                    
                }
                
                
            }
            
            .navigationTitle("Vancouver Tourism")
        }
        .accentColor(.white)
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}

