//
//  CityDetailView.swift
//  NomadApp
//
//  Created by Sara Lefort on 07/12/2024.
//

import SwiftUI

struct CityDetailView: View {
  var city: City
  @State var rating: Int = 1
  @State var review: String = "Write a review"
  
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
//      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
      Divider()
      
      VStack(alignment: .leading){
        Text("Reviews :")
          .font(.title3)
          .bold()
        
        TextEditor(text: $review)
          .frame(minHeight: 100, alignment: .leading)
          .font(.custom("HelveticaNeue", size: 13))
          .border(Color.gray, width: 1)
          .foregroundColor(Color.gray)
          .clipShape(RoundedRectangle(cornerRadius: 10))
          .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray, lineWidth: 1))
          .padding(.bottom)


        HStack{
          RatingView(rating: $rating)
          
          Spacer()
          
          Button(action: {
              // What to perform
          }) {
            Text("Post review")
              .padding()
              .bold()
              .font(.system(size: 14))
              .background(Color(red: 0.999, green: 0.276, blue: 0.257))
              .foregroundColor(.white)
              .clipShape(RoundedRectangle(cornerRadius: 10))
          }
        }
      }
      .padding()
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
