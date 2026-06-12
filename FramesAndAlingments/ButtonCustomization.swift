//
//  ButtonCustomization.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 12/06/26.
//

import SwiftUI

struct ButtonCustomization: View {
    var body: some View {
        

      VStack {


        Button("Button Title") {

        }
        .frame(height: 50)
        .frame(maxWidth: .infinity)

        .buttonStyle(.plain)

        Button("Button Title") {

        }
        .frame(height: 50)
        .frame(maxWidth: .infinity)
        .buttonStyle(.bordered)

        Button("Button Title") {

        }
        .frame(height: 50)
        .frame(maxWidth: .infinity)
        .buttonStyle(.automatic)

        Button("Button Title") {

        }
        .frame(height: 50)
        .frame(maxWidth: .infinity)
        .controlSize(.extraLarge)
        .buttonBorderShape(.circle)
        .buttonStyle(.borderedProminent)

        Button("Button Title") {

        }
        .frame(height: 50)
        .frame(maxWidth: .infinity)
        .buttonStyle(.borderless)



      }
      .padding()
    }
}

#Preview {
    ButtonCustomization()
}
