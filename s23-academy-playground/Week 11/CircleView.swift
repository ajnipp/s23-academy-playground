//
//  CircleView.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 4/10/23.
//

import SwiftUI

struct CircleView: View {
    @State private var shouldAnimate = false
    @State private var offsetY = 0.0
        
        var body: some View {
            Circle()
                .fill(Color.blue)
                .frame(width: shouldAnimate ? 100 : 50, height: shouldAnimate ? 100 : 50)
                .offset(x: 0, y: offsetY)
                .animation(.easeInOut(duration: 1), value: shouldAnimate)
                .onTapGesture {
                        self.shouldAnimate.toggle()
                    withAnimation {
                        offsetY += 100
                    }
                }
        }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
