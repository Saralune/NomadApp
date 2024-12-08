//
//  ListCitiesView.swift
//  NomadApp
//
//  Created by Sara Lefort on 07/12/2024.
//

import SwiftUI

struct ListCitiesView: View {
  var body: some View {
    NavigationStack {
      ScrollView {
        
        ForEach(cities){ city in
          NavigationLink {
            CityDetailView(city: city)
          } label: {
            CityCardView(city: city)
          }
        }
        .listStyle(.plain)
        .navigationTitle("Cities")
        //        .sheet(isPresented: $isShowingAddPlantScreen) {
        //          AddOrUpdatePlantView(myPlantCollection: $myPlantCollection, plant: newPlant, isCreation: isCreation)
        //        }
      }
    }
  }
}

#Preview {
  ListCitiesView()
}
