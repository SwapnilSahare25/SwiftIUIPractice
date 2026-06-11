//
//  IntroView.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 11/06/26.
//

import SwiftUI

struct IntroView: View {

  @AppStorage("is_loggedin") var isCurrentUserLogin: Bool = false

    var body: some View {

      ZStack {

        //background

        RadialGradient(gradient: Gradient(colors: [Color.cyan,Color.mint]),
                       center: .bottomLeading,
                       startRadius: 5,
                       endRadius: UIScreen.main.bounds.height)
        .ignoresSafeArea()


        // if user sign in -> profile view
        // else onboarding view

        if isCurrentUserLogin {

          ProfileViewSecond()
            .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))

        }else {

          OnBoardingView()
            .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
        }

      }

    }
}

#Preview {
    IntroView()
}
