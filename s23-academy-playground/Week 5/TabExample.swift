//
//  TabExample.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 2/28/23.
//

import SwiftUI
//
//struct TabExample: View {
//    @State private var roster = ["Jim", "Bob", "Kim"]
//    var body: some View {
//        VStack {
//            Text("My title")
//                .padding(.bottom, 50)
//            List {
//                Section("Names") {
//                    ForEach(roster) { name in
//                        RosterItemView(name: name)
//                    }
//                }
//            }
//            .listStyle(.grouped)
//            .border(.blue)
//        }
//    }
//}

struct RosterItemView: View {
    let name: String
    var body: some View {
        Button {
            print(name)
        } label: {
            Text(name)
        }
    }
}
//
//struct TabExample_Previews: PreviewProvider {
//    static var previews: some View {
//        TabExample()
//    }
//}
