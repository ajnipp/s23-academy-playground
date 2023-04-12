//
//  CollapseView.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 4/11/23.
//

import SwiftUI

struct CollapseView: View {
    @State private var isExpanded = false
    var body: some View {
        VStack {
            Button {
                withAnimation {
                    isExpanded.toggle()
                }
            } label: {
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .font(.title2)
                    .fontWeight(.semibold)
                    Image(systemName: "chevron.right")
                        .rotationEffect(.degrees(isExpanded ? 90 : 0))
                }
            }
            .buttonStyle(.plain)
            if isExpanded {
                Text("Hi there")
            }
        }
        .padding()
        .background(Color.mint.opacity(0.7))
        .cornerRadius(20)
        
    }
}

struct CollapseView_Previews: PreviewProvider {
    static var previews: some View {
        CollapseView()
    }
}
