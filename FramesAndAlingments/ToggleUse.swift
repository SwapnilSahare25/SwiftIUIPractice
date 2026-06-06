//
//  Toggle.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 05/06/26.
//

import SwiftUI

struct ToggleUse: View {

  @State var toggleIsOn: Bool = false


    var body: some View {

      VStack {


        HStack{

          Text("Status:")
          Text(toggleIsOn ? "Online" : "Offline")
        }

        Toggle(isOn: $toggleIsOn) {

          Text("Change Status")

        }.toggleStyle(SwitchToggleStyle(tint: .red))

        Spacer()
      }
      .padding()




    }
}

#Preview {
    ToggleUse()
}
