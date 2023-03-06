//
//  Meeting5View.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 2/28/23.
//

import SwiftUI

struct Meeting5View: View {
    var body: some View {
        ZStack {
            Color.blue
            NavigationStack {
                ZStack {
                    Color.blue
                    VStack {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        NavigationLink {
                            NavigationStack {
                                VStack {
                                    Text("Here")
                                        .navigationTitle("Title2")
                                    NavigationLink {
                                        Text("Here")
                                            .navigationTitle("Title2")
                                    } label : {
                                        Text("Here")
                                            .navigationTitle("Title2")
                                    }
                                }
                            }
                        } label: {
                            Text("travel")
                        }
                    }
                    .navigationTitle("Title")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}

struct Meeting5View_Previews: PreviewProvider {
    static var previews: some View {
         
            Meeting5View()
        
    }
}
