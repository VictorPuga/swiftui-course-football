//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 08/02/21.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}
