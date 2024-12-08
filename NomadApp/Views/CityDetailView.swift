//
//  CityDetailView.swift
//  NomadApp
//
//  Created by Sara Lefort on 07/12/2024.
//

import SwiftUI

struct CityDetailView: View {
  var city: City
  
  var body: some View {
    ScrollView{
      // Détails
      VStack{
        // Average cost per month
        TextCityDetailView(title: "Average Monthly Cost", text: "$ \(city.cost)", emoji: "💸")

        // Weather
        TextCityDetailView(title: "Weather", text: "\(city.temperature)°C", emoji: getWeatherSymbol(averageWeather: city.averageWeather))
        
        // Wifi
        TextCityDetailView(title: "Wifi", text: "\(city.wifi) Mbps", emoji: "🛜")
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
    .safeAreaInset(edge: .top){
      Image("\(city.imageName)")
        .resizable()
        .scaledToFit()
        .overlay{
          VStack{
            Text("\(city.name)")
              .font(.system(size: 22))
            Text("\(city.country)")
              .font(.system(size: 16))
          }
          .bold()
          .foregroundStyle(.white)
          .shadow(color: .black, radius: 2, x: 0, y: 2)
        }
    }
    .ignoresSafeArea(edges: .top)

    
    
  }
}

#Preview {
  CityDetailView(city: bangkok)
}
