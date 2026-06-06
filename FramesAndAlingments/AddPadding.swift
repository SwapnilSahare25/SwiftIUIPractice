//
//  AddPadding.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 21/05/26.
//

import SwiftUI

struct AddPadding: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        .background(Color.blue)
//       // .padding()
//        .padding(.all,10)
//        .padding(.leading,20)
//        .background(Color.red)
        .font(.title)
        .fontWeight(.bold)
        .frame(maxWidth: .infinity,alignment: .leading)
        .background(Color.red)
        .padding(.leading,15)

    }
}

#Preview {
    AddPadding()
}
