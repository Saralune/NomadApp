//
//  City.swift
//  NomadApp
//
//  Created by Sara Lefort on 02/12/2024.
//

import Foundation

struct City: Identifiable {
  let id: UUID
  let name: String
  let country: String
  let rank: Int
  let temperature: Double
  let wifi: Int
  let cost: Int
}
