//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 09/02/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
  // MARK: - Properties
  
  
  
  // MARK: - Body
  var body: some View {
    HStack {
      Button(action: {}) {
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
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}
