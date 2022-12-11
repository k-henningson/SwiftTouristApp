//
//  PlaceModel.swift
//  VanTourism
//
//  Created by Kyra Henningson on 2022-12-11.
//

import Foundation

struct PlaceModel: Identifiable, Decodable {
  var id: Int
  var name: String
  var imageName: String
  var subtitle: String
  var description: String
}
