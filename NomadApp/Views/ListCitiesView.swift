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
      ForEach(cities){ city in
        NavigationLink {
          CityDetailView()
        } label: {
          CityCardView(city: city)
        }
      }
      .listStyle(.plain)
      .navigationTitle("Cities")
    }
  }
}

#Preview {
  ListCitiesView()
}
