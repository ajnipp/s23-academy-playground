//
//  NestedView.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 2/6/23.
//

import SwiftUI

struct NestedView: View {
    var body: some View {
        HStack {
            VStack {
                Spacer()
                Spacer()
                Text("hi")
                    .padding(.bottom, 50)
            }
        }
    }
}

struct NestedView_Previews: PreviewProvider {
    static var previews: some View {
        NestedView()
    }
}
