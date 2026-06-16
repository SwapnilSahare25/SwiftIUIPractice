//
//  UseGrid.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 16/06/26.
//

import SwiftUI

struct UseGrid: View {

    var body: some View {

      Grid {
        GridRow {
         cell(int: 1)
          cell(int: 2)
          cell(int: 3)
        }

        GridRow {
          cell(int: 4)
          cell(int: 5)
        }

      }

    }

  private func cell(int: Int) -> some View {

    Text("\(int)")
      .font(.largeTitle)
      .padding()
      .background(Color.blue)



  }
}

#Preview {
    UseGrid()
}
