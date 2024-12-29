//
//  Review.swift
//  NomadApp
//
//  Created by Sara Lefort on 16/12/2024.
//

import Foundation

class Review : ObservableObject, Identifiable {
  let id: UUID = UUID()
  @Published var description: String
  @Published var rating: Int
  
  init (description: String, rating: Int) {
    self.description = description
    self.rating = rating
  }
}
