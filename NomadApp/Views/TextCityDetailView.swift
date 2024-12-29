//
//  TextCityDetailView.swift
//  NomadApp
//
//  Created by Sara Lefort on 08/12/2024.
//

import SwiftUI

struct TextCityDetailView: View {
  var title: String
  var text: String
  var emoji: String
  
  var body: some View {
    HStack{
      Text("\(title) :")
        .font(.system(size: 16, weight: .semibold))
      
      Spacer()
      
      Text("\(text) \(emoji)")
        .font(.system(size: 16, weight: .regular))
    }
    .padding(7)
  }
}

#Preview {
  TextCityDetailView(title: "Average Monthly Cost", text: "$ 1200", emoji: "⛱️")
}
