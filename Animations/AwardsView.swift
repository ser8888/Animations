//
//  AwardsView.swift
//  Animations
//
//  Created by John Doe on 27/09/2022.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                  GradientRectangles()
                        .frame(width: 200, height: 200)
                }
            }
            .navigationTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
