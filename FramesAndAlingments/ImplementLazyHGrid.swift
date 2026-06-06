//
//  LazyHGrid.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 27/05/26.
//

import SwiftUI

struct ImplementLazyHGrid: View {


  let columns: [GridItem] = [

      GridItem(.flexible(), spacing:  6, alignment: nil),
      GridItem(.flexible(), spacing:  6, alignment: nil),
      GridItem(.flexible(), spacing:  nil, alignment: nil)

  ]

    var body: some View {


      LazyHGrid(rows: columns, alignment: .center, spacing: 6,pinnedViews: [] ,content: {

        ScrollView(.horizontal){

          Section {

            ForEach(0..<15) { index in
              
              Rectangle()
                .fill(Color.orange)
                .frame(width: 300, height: 150, alignment: .leading)

            }
          } header: {
            Text("Section 1")
              .foregroundColor(.white)
              .font(.largeTitle)
              .frame(maxWidth: .infinity, alignment: .leading)
              .background(Color.blue)
              .padding()
            
            
            
          }

          Section {

            ForEach(0..<15) { index in

              Rectangle()
                .fill(Color.orange)
                .frame(width: 150)

            }
          } header: {
            Text("Section 2")
              .foregroundColor(.white)
              .font(.largeTitle)
              .frame(maxWidth: .infinity, alignment: .leading)
              .background(Color.red)
              .padding()



          }

        }


      })


    }

}

#Preview {

    ImplementLazyHGrid()
  
}
