//
//  Animations.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 29/05/26.
//

import SwiftUI

struct Animations: View {


  @State var isAnimated: Bool = false

    var body: some View {

      

      VStack {

        Button("Button") {

         // self.isAnimated.toggle()
          withAnimation(.default.repeatForever(autoreverses: true)) {

            self.isAnimated.toggle()
          }

        }

        Spacer()

        RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
          .fill( isAnimated ? Color.blue : Color.red)
          .frame(width: isAnimated ? 100 : 300 , height: isAnimated ? 100 : 300)
          .rotationEffect(.degrees(isAnimated ? 360 : 0))
          .offset(y: isAnimated ? 250 : 0)
          //.animation(Animation.default.repeatForever(autoreverses: true),value: 100)

        Spacer()



      }

    }
}

#Preview {
    Animations()
}
