//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 04/02/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
  let shop = Shop()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(shop)
    }
  }
}
