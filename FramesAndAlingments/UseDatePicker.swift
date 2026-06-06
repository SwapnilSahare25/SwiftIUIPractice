//
//  UseDatePicker.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 05/06/26.
//

import SwiftUI

struct UseDatePicker: View {

  @State var selection: Date = Date()

    var body: some View {



      //DatePicker("Select Date", selection: $selection)
      DatePicker("Select a date", selection: $selection, displayedComponents: [.date])
        .datePickerStyle(.compact)
    }
}

#Preview {
    UseDatePicker()
}
