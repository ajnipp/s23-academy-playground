//
//  PulseView.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 4/10/23.
//

import SwiftUI

struct ExpandView: View {
    @State private var isExpanded = false
       
       var body: some View {
           VStack {
               Button {
                   withAnimation {
                       self.isExpanded.toggle()
                   }
               } label: {
                   HStack {
                       Text("Show more")
                       Image(systemName: "chevron.right")
                           .font(.body)
                           .rotationEffect(Angle(degrees: isExpanded ? 90 : 0))
                   }
               }
               .buttonStyle(.plain)
               if isExpanded {
                   Text("Hello!")
               }
           }
           .padding()
           .background(.gray)
           .cornerRadius(10)
       }
   

}

struct ExpandView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandView()
    }
}
