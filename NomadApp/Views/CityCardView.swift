//
//  CityCardView.swift
//  NomadApp
//
//  Created by Sara Lefort on 01/12/2024.
//

import SwiftUI

struct CityCardView: View {
  let city: City
  
  var body: some View {
    ZStack(alignment: .center){
      Image(city.imageName)
        .resizable()
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding()
        .frame(height: 220)
      
      Rectangle()
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .opacity(0.25)
        .padding()
        .frame(height: 220)
      
      VStack{
        HStack{
          Text("\(city.rank)")
            .font(.system(size: 16))
          
          Spacer()
          
          HStack{
            Image(systemName: "wifi")
              .font(.system(size: 16))

            VStack{
              Text("\(city.wifi)")
                .font(.system(size: 16))
              Text("Mbps")
                .font(.system(size: 10))
            }
          }
        }
        .padding()
        
        Spacer()
          .frame(height: 30)
        
        Text("\(city.name), \(city.country)")
          .fontWeight(.bold)
          .font(.system(size: 22))

        Spacer()
          .frame(height: 30)
        
        HStack{
          HStack{            
            Text(getWeatherSymbol(averageWeather: city.averageWeather))
            
            Text("\(city.temperature)°C")
          }
          .font(.system(size: 16))
          
          Spacer()
          
          Text("$\(city.cost) / mo")
            .font(.system(size: 16))
        }
        .padding()
      }
      .bold()
      .foregroundStyle(.white)
      .shadow(color: .black, radius: 2, x: 0, y: 2)
      .frame(maxWidth: .infinity)
      .padding()
    } // ZStack
  }

}

#Preview {
  CityCardView(city: seoul)
}
