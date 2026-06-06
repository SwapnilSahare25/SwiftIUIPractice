//
//  FramesAndAlingmentsApp.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 21/05/26.
//

import SwiftUI

@main
struct FramesAndAlingmentsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            Background()
            OverLay()
            VStacks()
            HStacks()
            ZStacks()
            AddPadding()
            AddSpacer()
          InitsAndEnums(count: 10, fruit: .apple)
          ForEachLoop()
          ScrollViewSetUp()
          ImplementLazyVGrid()
          ImplementLazyHGrid()
          UseIgnoreSafeArea()
          AddButtons()
          StatePropertyWrapper()
          ExtractedFunctions()
          ExtractSubviews()
          BindingStatePropertyWrapper()
          Animations()
          AnimationCurvesORTiming()
          Transition()
          SheetAndFullScreenCover()
          PopOverSheetAnimationTransition()
          NavigationViewAndLink()
          UseAlert()

        }
    }
}
