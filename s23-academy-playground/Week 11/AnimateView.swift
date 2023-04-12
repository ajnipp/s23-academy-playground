//
//  AnimateView.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 4/11/23.
//

import SwiftUI

struct AnimateView: View {
    @State var showText = false
            
            var body: some View {
                VStack {
                    if (self.showText) {
                        Text("HELLO WORLD")
                            .transition(.slide)
                    }
                    Button(action: {
                            self.showText.toggle()
                    }) {
                        Text("Change me")
                    }
                }
            }
}

struct AnimateView_Previews: PreviewProvider {
    static var previews: some View {
        AnimateView()
    }
}
