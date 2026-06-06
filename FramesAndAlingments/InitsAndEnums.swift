//
//  InitsAndEnums.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 22/05/26.
//

import SwiftUI

struct InitsAndEnums: View {

    let backgroundColor: Color
    let count: Int
    let title: String

  init(count: Int, fruit: Fruit) {
    //self.backgroundColor = backgroundColor
    self.count = count
   // self.title = title

//    if title == "Apple"{
//      self.backgroundColor = .red
//    }else{
//      self.backgroundColor = backgroundColor
//    }

    if fruit == .apple {
      self.title =  "Apple"
      self.backgroundColor = .red
    }else{
      self.title =  "Orange"
      self.backgroundColor = .orange
    }
  }

  enum Fruit {

    case apple
    case orange

  }

    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()

            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
  VStack {
    HStack {
      InitsAndEnums(count: 10, fruit: .orange)

      InitsAndEnums(count: 25, fruit: .apple)
    }
    HStack {
      InitsAndEnums(count: 20, fruit: .apple)

      InitsAndEnums(count: 19, fruit: .orange)
    }
  }
}
