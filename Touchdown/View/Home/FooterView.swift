//
//  FooterView.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 04/02/21.
//

import SwiftUI

struct FooterView: View {
  // MARK: - Properties
  
  
  
  // MARK: - Body
  var body: some View {
    VStack(alignment: .center, spacing: 10) {
      Text("We offer the most cutting edge, comfortable, lightweight, and durable football helmets in the market at affordable prices.")
        .foregroundColor(.gray)
        .multilineTextAlignment(.center)
        .layoutPriority(2)
      
      Image("logo-lineal")
        .renderingMode(.template)
        .foregroundColor(.gray)
        .layoutPriority(0)
      
      Text("Copyright © Victor Puga\nAll rights reserved")
        .font(.footnote)
        .foregroundColor(.gray)
        .multilineTextAlignment(.center)
        .layoutPriority(1)
    } // :VStack
    .padding()
  }
}

// MARK: - Preview
struct FooterView_Previews: PreviewProvider {
  static var previews: some View {
    FooterView()
      .previewLayout(.sizeThatFits)
      .background(colorBackground)
  }
}
