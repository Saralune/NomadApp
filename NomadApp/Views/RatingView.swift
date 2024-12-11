//
//  RatingView.swift
//  PlantCollector
//
//  Created by Sara Lefort on 14/11/2024.
//

import SwiftUI

struct RatingView: View {
  @Binding var rating: Int
  
  var label = ""
  var maxRating = 5
  
  var offImage: Image?
  var onImage: Image {
    Image(systemName: "star.fill")
  }
  
  var offColor = Color.gray
  var onColorYellow = Color.yellow
  
  var body: some View {
    HStack{
      if !label.isEmpty {
        Text(label)
      }
      
      ForEach(1..<maxRating + 1, id: \.self) { number in
        Button {
          rating = number
        } label: {
          image(for: number)
            .foregroundStyle(number > rating ? offColor : Color.yellow)
        }
      }
    }
    .buttonStyle(.plain)
  }
  
  func image(for number:Int) -> Image {
    if number > rating {
      offImage ?? onImage
    } else {
      onImage
    }
  }

}

#Preview {
  RatingView(rating: .constant(1))
}
