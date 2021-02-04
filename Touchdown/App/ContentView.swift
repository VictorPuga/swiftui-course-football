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
    FooterView()
      .padding(.horizontal)
  }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
