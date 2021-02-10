//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 09/02/21.
//

import SwiftUI

struct TopPartDetailView: View {
  // MARK: - Properties
  @State private var isAnimating: Bool = false
  
  
  // MARK: - Body
  var body: some View {
    HStack(alignment: .center, spacing: 6) {
      VStack(alignment: .leading, spacing: 6) {
        Text("Price")
          .fontWeight(.semibold)
        Text(sampleProduct.formattedPrice)
          .font(.largeTitle)
          .fontWeight(.black)
          .scaleEffect(1.35, anchor: .leading)
      } // :VStack
      .offset(y: isAnimating ? -50 : -57)
      
      
      Spacer()
      
      Image(sampleProduct.image)
        .resizable()
        .scaledToFit()
        .offset(y: isAnimating ? 0 : -35)
      
    } // :HStack
    .onAppear {
      withAnimation(.easeOut(duration: 0.75)) {
        isAnimating.toggle()
      }
    }
  }
}

// MARK: - Preview
struct TopPartDetailView_Previews: PreviewProvider {
  static var previews: some View {
    TopPartDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
