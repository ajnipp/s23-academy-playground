//
//  TransitionView.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 4/10/23.
//

import SwiftUI

struct TransitionView: View {
    @State var showText = false
        
        var body: some View {
            VStack {
                if (self.showText) {
                    Text("HELLO WORLD")
                        .transition(.slide)
                }
                Button(action: {
                    withAnimation() {
                        self.showText.toggle()
                    }
                }) {
                    Text("Change me")
                }
            }
        }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
