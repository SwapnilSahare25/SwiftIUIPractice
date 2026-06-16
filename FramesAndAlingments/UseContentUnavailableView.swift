//
//  UseContentUnavailableView.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 16/06/26.
//

import SwiftUI

// Empty PageView

struct UseContentUnavailableView: View {


    var body: some View {

        ContentUnavailableView("Not Found", image: "likedSongs", description: Text("Please add something"))

    }
}

#Preview {
    UseContentUnavailableView()
}
