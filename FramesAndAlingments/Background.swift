//
//  BackgroundAndOverlay.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 21/05/26.
//

import SwiftUI

struct Background: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
       // .frame(width: 100, height: 100)
        .background(
          Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [Color.green,Color.yellow,Color.orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .frame(width: 150, height: 150, alignment: .center)
        )
        .background(
          Circle()
            .fill(Color.red)
            .frame(width: 200, height: 200, alignment: .center)
        )
        .background(
          Rectangle()
            .fill(Color.blue)
            .frame(width: 250, height: 250, alignment: .center)
            .cornerRadius(25)

        )
    }
}

#Preview {
    Background()
}
