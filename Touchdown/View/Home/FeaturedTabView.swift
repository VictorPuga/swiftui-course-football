//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 07/02/21.
//

import SwiftUI

struct FeaturedTabView: View {
  // MARK: - Body
  var body: some View {
    TabView {
      ForEach(players) { player in
        FeaturedItemView(player: player)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

// MARK: - Preview
struct FeaturedTabView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedTabView()
      .background(Color.gray)
  }
}
