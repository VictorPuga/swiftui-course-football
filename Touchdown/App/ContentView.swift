//
//  ContentView.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 04/02/21.
//

import SwiftUI

struct ContentView: View {
  // MARK: - Body
  var body: some View {
    ZStack {
      VStack(spacing: 0) {
        NavigationBarView()
          .padding(.horizontal, 15)
          .padding(.bottom)
          .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
          .background(Color.white)
          .shadow(
            color: Color.black.opacity(0.05),
            radius: 5,
            x: 0,
            y: 5
          )
        
        ScrollView(.vertical) {
          VStack(spacing: 0) {
            FeaturedTabView()
              .padding(.vertical, 20)
            
            CategoryGridView()
            
            TitleView(title: "Helmets")
            LazyVGrid(columns: gridLayout, spacing: 15) {
              ForEach(products) { product in
                ProductItemView(product: product)
              } // :ForEach
            } // :Grid
            .padding(15)
            
            TitleView(title: "Brands")
            BrandGridView()
            
            FooterView()
              .padding(.horizontal)
          }
        }
        
      } // :VStack
      .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    } // :ZStack
    .ignoresSafeArea(.all, edges: .top)
  }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPhone SE (2nd generation)")
    ContentView()
      .previewDevice("iPhone 12 Pro Max")
  }
}
