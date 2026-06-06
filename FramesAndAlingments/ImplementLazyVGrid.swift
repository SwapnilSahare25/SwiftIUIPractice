//
//  LazyVGrid.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 23/05/26.
//

import SwiftUI

struct ImplementLazyVGrid: View {

//  GridItem(.fixed(75), spacing:  nil, alignment: nil),
//  GridItem(.fixed(50), spacing:  nil, alignment: nil),
//  GridItem(.fixed(100), spacing:  nil, alignment: nil),
//  GridItem(.fixed(50), spacing:  nil, alignment: nil),
//  GridItem(.fixed(75), spacing:  nil, alignment: nil),

//  GridItem(.flexible(), spacing:  nil, alignment: nil),
//  GridItem(.flexible(), spacing:  nil, alignment: nil),
//  GridItem(.flexible(), spacing:  nil, alignment: nil),
//  GridItem(.flexible(), spacing:  nil, alignment: nil),
//  GridItem(.flexible(), spacing:  nil, alignment: nil)

//  GridItem(.adaptive(minimum: 50, maximum: 300), spacing:  nil, alignment: nil),
//  GridItem(.adaptive(minimum: 100, maximum: 300), spacing:  nil, alignment: nil),
//  GridItem(.adaptive(minimum: 150, maximum: 300), spacing:  nil, alignment: nil)


  let columns: [GridItem] = [

      GridItem(.flexible(), spacing:  6, alignment: nil),
      GridItem(.flexible(), spacing:  6, alignment: nil),
      GridItem(.flexible(), spacing:  nil, alignment: nil)

  ]

    var body: some View {

      ScrollView {

        Rectangle()
          .fill(Color.purple)
          .frame(height: 400)

        LazyVGrid(
          columns: columns,
          alignment: .center, 
          spacing: 6,
          pinnedViews: [.sectionFooters, .sectionHeaders],
          content: {
            Section {
              ForEach(0..<15) { index in

                Rectangle()
                  .fill(Color.orange)
                  .frame(height: 150)

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
              ForEach(0..<10) { index in

                Rectangle()
                  .fill(Color.green)
                  .frame(height: 150)


              }
            } header: {
              Text("Section 2")
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.red)
                .padding()
            }

            Section {
              ForEach(0..<10) { index in

                Rectangle()
                  .fill(Color.green)
                  .frame(height: 150)


              }
            } footer: {
              Text("Section 3 Footer")
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.brown)
                .padding()
            }

            Section {
              ForEach(0..<10) { index in

                Rectangle()
                  .fill(Color.green)
                  .frame(height: 150)


              }
            } header: {
              Text("Section 4")
                .foregroundColor(.gray)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.brown)
                .padding()
            } footer: {
              Text("Section 4 Footer")
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.blue)
                .padding()
            }



//
//          ForEach(0..<50) { index in
//
//            Rectangle()
//              .frame(height: 150)
//
//          }


        })


//        LazyVGrid(columns: columns) {
//
//          ForEach(0..<50) { index in
//
//            Rectangle()
//              .frame(height: 150)
//
//          }
//
//        }
      }

    }
}

#Preview {
    ImplementLazyVGrid()
}
