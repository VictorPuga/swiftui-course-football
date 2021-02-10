//
//  Shop.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 09/02/21.
//

import Foundation

class Shop: ObservableObject {
  @Published private(set) var showingProduct: Bool = false
  @Published private var product: Product?
  
  func setProduct(_ newProduct: Product?) {
    product = newProduct
    showingProduct = newProduct != nil
  }
  
  var selectedProduct: Product { product ?? sampleProduct }
}
