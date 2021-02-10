//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 09/02/21.
//

import SwiftUI

struct ProductDetailView: View {
  // MARK: - Properties
  @EnvironmentObject var shop: Shop
  
  
  // MARK: - Body
  var body: some View {
    VStack(alignment: .leading, spacing: 5) {
      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
      
      HeaderDetailView()
        .padding(.horizontal)
      
      TopPartDetailView()
        .padding(.horizontal)
        .zIndex(1)
      
      VStack(spacing: 0) {
        RatingsSizesDetailView()
          .padding(.top, -20)
          .padding(.bottom, 10)
        
        ScrollView(.vertical) {
          Text(shop.selectedProduct.description)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)
        } // :ScrollView
        QuantityFavoriteDetailView()
          .padding(.vertical, 10)
        
        AddToCartDetailView()
          .padding(.bottom, 20)
      } // :VStack
      .padding(.horizontal)
      .background(
        Color.white
          .clipShape(CustomShape())
          .padding(.top, -105)
      )

    } // :VStack
    .zIndex(0)
    .ignoresSafeArea(.all, edges: .all)
    .background(
      Color(
        red: shop.selectedProduct.red,
        green: shop.selectedProduct.green,
        blue: shop.selectedProduct.blue
      )
      .ignoresSafeArea(.all, edges: .all)
    )
  }
}

// MARK: - Preview
struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView()
      .environmentObject(Shop())
      .previewLayout(.fixed(width: 375, height: 812))
  }
}
