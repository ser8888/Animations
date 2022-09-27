//
//  GradientRectangles.swift
//  Animations
//
//  Created by John Doe on 27/09/2022.
//

import SwiftUI

struct GradientRectangles: View {
    var body: some View {
        ZStack {
            ForEach(0..<3) { iteration in
                Rectangle()
                    .fill(
                    LinearGradient(
                        colors: [.green, .blue ],
                        startPoint: UnitPoint(x: 0, y: 1),
                        endPoint: UnitPoint(x: 1, y: 0)
                    )
                )
                    .rotationEffect(.degrees(Double(iteration) * 60))
            }
        }
    }
}

struct GradientRectangles_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangles()
            .frame(width: 200, height: 200)
    }
}
