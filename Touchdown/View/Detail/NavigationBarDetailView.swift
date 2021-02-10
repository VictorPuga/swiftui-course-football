//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 09/02/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
  // MARK: - Properties
  @EnvironmentObject var shop: Shop
  
  
  // MARK: - Body
  var body: some View {
    HStack {
      Button(action: {
        withAnimation(.easeIn) {
          feedback.impactOccurred()
          shop.setProduct(nil)
        }
      }) {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      }
      Spacer()
      Button(action: {}) {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      }
    } // :HStack
  }
}

// MARK: - Preview
struct NavigationBarDetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarDetailView()
      .environmentObject(Shop())
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}
