//
//  ContentView.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 21/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Text("Hello, world!")
                .background(Color.green)
                .frame(width: 100, height: 100,alignment: .center)
                .background(Color.yellow)
                .frame(maxWidth: 150, maxHeight: 150, alignment: .center)
                .background(Color.blue)
                .frame(maxWidth: 200, maxHeight: 200, alignment: .center)
                .background(Color.green)
                .frame(maxWidth: 250, maxHeight: 250, alignment: .center)
                .background(Color.gray)
                .frame(maxWidth: 300, maxHeight: 300, alignment: .center)
                .background(Color.pink)
                .frame(maxWidth: .infinity, maxHeight: 400, alignment: .center)
                .background(Color.blue)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.orange)
    }
}

#Preview {
    ContentView()
}
