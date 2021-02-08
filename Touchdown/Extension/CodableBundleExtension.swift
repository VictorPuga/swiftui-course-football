//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Víctor Manuel Puga Ruiz on 07/02/21.
//

import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("File to locate \(file) in bundle.")
    }
    guard let data = try? Data(contentsOf: url) else {
      fatalError("File to lead \(file) from bundle.")
    }
    let decoder = JSONDecoder()
    
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
      fatalError("File to decode \(file) from bundle.")
    }
    return decodedData
  }
}
