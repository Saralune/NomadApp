//
//  City.swift
//  NomadApp
//
//  Created by Sara Lefort on 02/12/2024.
//

import Foundation

struct City: Identifiable {
  let id: UUID = UUID()
  let name: String
  let country: String
  let rank: Int
  let temperature: Int
  let wifi: Int
  let cost: Int
}

let bangkok: City = City(name: "Bangkok", country: "Thailand", rank: 1, temperature: 37, wifi: 40, cost: 1506)
let chiangMai: City = City(name: "Chiang Mai", country: "Thailand", rank: 2, temperature: 27, wifi: 44, cost: 1132)
let tokyo: City = City(name: "Tokyo", country: "Japan", rank: 3, temperature: 14, wifi: 50, cost: 3194)
let bunosAires: City = City(name: "Buenos Aires", country: "Argentina", rank: 4, temperature: 22, wifi: 32, cost: 1584)
let mexicoCity: City = City(name: "Mexico City", country: "Mexico", rank: 5, temperature: 20, wifi: 45, cost: 1812)
let kualaLumpur: City = City(name: "Kuala Lumpur", country: "Malaysia", rank: 6, temperature: 25, wifi: 67, cost: 1329)
