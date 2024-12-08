//
//  City.swift
//  NomadApp
//
//  Created by Sara Lefort on 02/12/2024.
//

import Foundation

struct City: Identifiable {
  let id: UUID = UUID()
  let imageName: String
  let name: String
  let country: String
  let rank: Int
  let temperature: Int
  let averageWeather: String
  let wifi: Int
  let cost: Int
}

let bangkok: City = City(imageName: "bangkok-thailand", name: "Bangkok", country: "Thailand", rank: 1, temperature: 37, averageWeather: "cloudy", wifi: 40, cost: 1506)
let chiangMai: City = City(imageName: "", name: "Chiang Mai", country: "Thailand", rank: 2, temperature: 27, averageWeather: "cloudy", wifi: 44, cost: 1132)
let tokyo: City = City(imageName: "tokyo-japan", name: "Tokyo", country: "Japan", rank: 3, temperature: 14, averageWeather: "sunny", wifi: 50, cost: 3194)
let buneosAires: City = City(imageName: "buenos-aires-argentina", name: "Buenos Aires", country: "Argentina", rank: 4, temperature: 22, averageWeather: "cloudy", wifi: 32, cost: 1584)
let mexicoCity: City = City(imageName: "mexico-city-mexico", name: "Mexico City", country: "Mexico", rank: 5, temperature: 20, averageWeather: "sunny", wifi: 45, cost: 1812)
let kualaLumpur: City = City(imageName: "kuala-lumpur-malaysia", name: "Kuala Lumpur", country: "Malaysia", rank: 6, temperature: 25, averageWeather: "rainy", wifi: 67, cost: 1329)
let seoul: City = City(imageName: "seoul-south-korea", name: "Seoul", country: "South Korea", rank: 30, temperature: 10, averageWeather: "sunny", wifi: 52, cost: 2683)
let cities = [bangkok, chiangMai, tokyo, buneosAires, mexicoCity, kualaLumpur, seoul]

func getWeatherSymbol(averageWeather: String) -> String {
  switch(averageWeather){
  case "sunny":
    return "☀️"
  case "cloudy":
    return "⛅️"
  case "rainy":
    return "🌧️"
  default:
    return "☀️"
  }
}
