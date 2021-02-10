//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 09/02/21.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
  // MARK: - Properties
  @State private var counter: Int = 0
  
  
  // MARK: - Body
  var body: some View {
    HStack(spacing: 6) {
      Button(action: {
        if counter > 0 {
          counter -= 1
          feedback.impactOccurred()
        }
      }) {
        Image(systemName: "minus.circle")
      }
      
      Text("\(counter)")
        .fontWeight(.semibold)
        .frame(minWidth: 36)
      
      Button(action: {
        if counter < 100 {
          counter += 1
          feedback.impactOccurred()
        }
      }) {
        Image(systemName: "plus.circle")
      }
      
      Spacer()
      
      Button(action: {
        feedback.impactOccurred()
      }) {
        Image(systemName: "heart.circle")
          .foregroundColor(.pink)
      }
    }
    .font(.system(.title, design: .rounded))
    .foregroundColor(.black)
    .imageScale(.large)
  }
}

// MARK: - Preview
struct QuantityFavoriteDetailView_Previews: PreviewProvider {
  static var previews: some View {
    QuantityFavoriteDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
