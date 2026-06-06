//
//  AnimationCurvesORTiming.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 29/05/26.
//

import SwiftUI

struct AnimationCurvesORTiming: View {

  @State var isAnimated: Bool = false
  let timing: Double = 10.0

  
    var body: some View {

      VStack {

        Button("Button") {

          self.isAnimated.toggle()
//          withAnimation(.default.repeatForever(autoreverses: true)) {
//
//            self.isAnimated.toggle()
//          }

        }



//        RoundedRectangle(cornerRadius: 20)
//          .frame(width: isAnimated ? 350 : 50 , height: 100)
//          .animation( Animation.default, value: isAnimated)
//
//        RoundedRectangle(cornerRadius: 20)
//          .frame(width: isAnimated ? 350 : 50 , height: 100)
//          .animation( Animation.easeIn, value: isAnimated)
//
//        RoundedRectangle(cornerRadius: 20)
//          .frame(width: isAnimated ? 350 : 50 , height: 100)
//          .animation( Animation.easeOut, value: isAnimated)
//
//        RoundedRectangle(cornerRadius: 20)
//          .frame(width: isAnimated ? 350 : 50 , height: 100)
//          .animation( Animation.easeInOut, value: isAnimated)
//
//        RoundedRectangle(cornerRadius: 20)
//          .frame(width: isAnimated ? 350 : 50 , height: 100)
//          .animation( Animation.linear, value: isAnimated)
//
//        RoundedRectangle(cornerRadius: 20)
//          .frame(width: isAnimated ? 350 : 50 , height: 100)
//          .animation( Animation.bouncy, value: isAnimated)


        RoundedRectangle(cornerRadius: 20)
          .frame(width: isAnimated ? 350 : 50 , height: 100)
          .animation( Animation.default, value: isAnimated)

        RoundedRectangle(cornerRadius: 20)
          .frame(width: isAnimated ? 350 : 50 , height: 100)
          .animation( Animation.easeIn(duration: timing), value: isAnimated)

        RoundedRectangle(cornerRadius: 20)
          .frame(width: isAnimated ? 350 : 50 , height: 100)
          .animation( Animation.easeOut(duration: timing), value: isAnimated)

        RoundedRectangle(cornerRadius: 20)
          .frame(width: isAnimated ? 350 : 50 , height: 100)
          .animation( Animation.easeInOut(duration: timing), value: isAnimated)

        RoundedRectangle(cornerRadius: 20)
          .frame(width: isAnimated ? 350 : 50 , height: 100)
          .animation( Animation.linear(duration: timing), value: isAnimated)

        RoundedRectangle(cornerRadius: 20)
          .frame(width: isAnimated ? 350 : 50 , height: 100)
          .animation( Animation.bouncy(duration: timing), value: isAnimated)


//        RoundedRectangle(cornerRadius: 20)
//          .frame(width: isAnimated ? 350 : 50 , height: 100)
//          .animation( Animation.spring, value: isAnimated)







      }
    }
}

#Preview {
    AnimationCurvesORTiming()
}
