//
//  OverLay.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 21/05/26.
//

import SwiftUI

struct OverLay: View {
    var body: some View {
       Rectangle()
        .fill(Color.blue)
        .frame(width: 200,height: 200)
        .overlay(alignment: .center) {
          Rectangle()
            .fill(Color.red)
            .frame(width: 100,height: 100)
            .cornerRadius(20)
        }
        .background(
          Circle()
            .fill(Color.orange)
            .frame(width: 350,height: 350)

        )
    }
}

#Preview {
    OverLay()
}
