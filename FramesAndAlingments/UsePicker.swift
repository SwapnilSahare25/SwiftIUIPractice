//
//  UsePicker.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 05/06/26.
//

import SwiftUI

struct UsePicker: View {

  @State var selection: String = "1"


    var body: some View {


      Picker(selection: $selection) {
        Text("1").tag(1)
        Text("2").tag(2)
      } label: {
        Text("Picker")
      }
      .pickerStyle(.automatic)



//      VStack {
//
//        HStack{
//          Text("Age:")
//          Text(selection)
//
//        }
//
//
//
//        Picker(selection: $selection) {
//
//          ForEach(18..<100){ number in
//
//            Text("\(number)")
//              .tag("\(number)")
//
//
//          }
//
//        } label: {
//
//          Text("Picker")
//
//        }
//
//      .pickerStyle(.wheel)
//      }

    }
}

#Preview {
    UsePicker()
}
