//
//  CustomizationOfKeyboard.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 13/06/26.
//

import SwiftUI

//.onSubmit()
//.submitLable

struct CustomizationOfKeyboard: View {

  @State var nameStr: String = ""

    var body: some View {

      TextField("Your name here ...", text: $nameStr)
        .submitLabel(.done)
        .onSubmit {
          print("Submit button clicked.")
        }

    }
}

#Preview {
    CustomizationOfKeyboard()
}
