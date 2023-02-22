//
//  Demo4.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 2/21/23.
//

import SwiftUI

struct Demo4: View {
    @State private var count = 0
    private var max = 10
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Color.red
                    .ignoresSafeArea()
                    .opacity(Double(count) / Double(max))
                VStack {
                    HStack {
                        Text("Count: \(count)")
                            .font(.largeTitle)
                        Spacer()
                        NavigationLink {
                           SettingsView(count: $count)
                        } label: {
                            Image(systemName: "gear")
                                .font(.largeTitle)
                        }
                        .buttonStyle(.plain)
                        
                    }
                    Spacer()
                    HStack {
                        Button {
                            count -= 1
                        } label: {
                            Image(systemName: "minus")
                                .font(.system(size: 60))
                        }
                        Spacer()
                        Button {
                            count += 1
                        } label: {
                            Image(systemName: "plus")
                                .font(.system(size: 60))
                        }
                    }
                    .buttonStyle(.plain)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SettingsView : View {
    @Binding var count: Int
    var body: some View {
        VStack {
            Stepper("Count \(count)", value: $count)
        }
    }
}

struct Demo4_Previews: PreviewProvider {
    static var previews: some View {
        Demo4()
    }
}
