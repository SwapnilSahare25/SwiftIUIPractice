//
//  ObservableMacro.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 16/06/26.
//

import SwiftUI

// Observable Micro Introduction

@Observable class ObservableMacroViewModel {

  var title: String = "Some Title"
 // @ObservationIgnored var title: String = "Some Title"
  //if dont want to publish to the view
}

struct ObservableMacro: View {

  @State private var viewModel = ObservableMacroViewModel()

    var body: some View {

      VStack(spacing: 40) {

        Button(viewModel.title) {
          viewModel.title = "New Title!"
        }
        SomeChildView(viewModel: viewModel)
        ThirdSomeChildView()
      }
      .environment(viewModel)

    }
}

struct SomeChildView: View {

  @Bindable var viewModel: ObservableMacroViewModel

  var body: some View {

    Button(viewModel.title) {
      viewModel.title = "Some Title!"
    }

  }
}

struct ThirdSomeChildView: View {

  @Environment (ObservableMacroViewModel.self) var viewModel

  var body: some View {

    Button(viewModel.title) {
      viewModel.title = "Third Title!"
    }

  }
}

#Preview {
    ObservableMacro()
}
