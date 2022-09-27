//
//  CarRacingView.swift
//  Animations
//
//  Created by John Doe on 27/09/2022.
//

import SwiftUI

struct CarRacingView: View {
    @State private var start = false
    
    var body: some View {
        HStack {
            VStack(spacing: 10) {
                CartView(
                    start: $start,
                    cartTitle: "Default",
                    color: .red,
                    animation: .default
                )
                CartView(
                    start: $start,
                    cartTitle: "EaseOut",
                    color: .green,
                    animation: .easeOut(duration: 0.7)
                )
                CartView(
                    start: $start,
                    cartTitle: "EaseIn",
                    color: .cyan,
                    animation: .easeIn(duration: 0.7)
                )
                CartView(
                    start: $start,
                    cartTitle: "EaseInOut",
                    color: .yellow,
                    animation: .easeInOut(duration: 0.7)
                )
                CartView(
                    start: $start,
                    cartTitle: "InterpolationSpring",
                    color: .brown,
                    animation: .interpolatingSpring(
                        mass: 1,
                        stiffness: 100,
                        damping: 10,
                        initialVelocity: 0
                        )
                    .delay(0.9)
                    )
                    CartView(
                        start: $start,
                        cartTitle: "Spring",
                        color: .orange,
                        animation: .spring(
                            response: 0.55,
                            dampingFraction: 0.5,
                            blendDuration: 0
                        )
                        .speed(2)
                        .repeatCount(
                            13,
                            autoreverses: true
                        )
                    )
            }
            Spacer()
        }
        .onTapGesture {
            start.toggle()
        }
    }
}

struct CarRacingView_Previews: PreviewProvider {
    static var previews: some View {
        CarRacingView()
    }
}

struct CartView: View {
    @Binding var start: Bool
    
    let cartTitle: String
    let color: Color
    let animation: Animation
    
    var body: some View {
        VStack {
            Image(systemName: "cart.fill")
                .font(.title)
                .foregroundColor(color)
                .offset(x: start ? UIScreen.main.bounds.width - 200 : 0)
                .animation(animation, value: start)
            Text(cartTitle)
        }
    }
}
