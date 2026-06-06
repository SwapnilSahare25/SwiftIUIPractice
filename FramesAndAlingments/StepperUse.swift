//
//  StepperUse.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 06/06/26.
//

import SwiftUI

struct StepperUse: View {

  @State var steperValue: Int = 10
  @State var widthValue: Int = 0


    var body: some View {

      Stepper("Stepper: \(steperValue)", value: $steperValue)
        .padding(50)


      RoundedRectangle(cornerRadius: 25)
        .frame(width: 100 + CGFloat(widthValue) , height: 100)

      Stepper("Stepper") {

        //increment

        widthValue += 10


      } onDecrement: {

        //decrement

        widthValue -= 10

      }
      .padding(50)



    }
}

#Preview {
    StepperUse()
}
