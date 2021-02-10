//
//  Constant.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 04/02/21.
//

import SwiftUI

// MARK: Data

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

let sampleProduct = products[0]

// MARK: Color

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// MARK: Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// MARK: UX



// MARK: API



// MARK: Image



// MARK: Font



// MARK: String



// MARK: Misc.
