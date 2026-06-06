//
//  UseSlider.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 06/06/26.
//

import SwiftUI

struct UseSlider: View {

  @State var sliderValue: Double = 0

    var body: some View {


     // Slider(value: $sliderValue)
      Slider(value: $sliderValue, label: {
        Text("Stepper")

      }, minimumValueLabel: {


        Text("\(0)")

      }, maximumValueLabel: {

        Text("\(100)")

      })
        .padding(30)


    }
}

#Preview {
    UseSlider()
}
