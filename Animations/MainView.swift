//
//  MainView.swift
//  Animations
//
//  Created by John Doe on 27/09/2022.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: { awardIsShowing.toggle() }) {
                HStack {
//                    if awardIsShowing {
//                        Text("Hide Award")
//                        Image(systemName: "chevron.up.square")
//                    } else {
//                        Text("Show Award")
//                        Image(systemName: "chevron.down.square")
//                    }
                    Text(awardIsShowing ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(awardIsShowing ? 2 : 1)
                        .rotationEffect(.degrees(awardIsShowing ? 0 : 540))
                        .animation(.default, value: awardIsShowing)
                    
                    
                }
            }
            Spacer()
            GradientRectangles()
                .frame(width: 250, height: 250)
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
