//
//  Meeting4View.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 2/21/23.
//

import SwiftUI

struct Meeting4View: View {
    @State var backgroundColor = Color.orange
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundColor
                VStack {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //            .padding()
                        .background(Color.red)
                        .padding()
                    .border(.blue)
                    Image(systemName: "paperplane")
                        .padding()
        //                .resizable()
                    Button {
                        print("hi")
                    } label: {
                        Image(systemName: "paperplane")
                    }
                    .buttonStyle(.plain)
                    MyButton(color: $backgroundColor)
                    myButton
                    NavigationLink {
                        MyButton(color: $backgroundColor)
                    } label : {
                        Text("navigate")
                    }
                }
            }
        }
        
    }
    
    @ViewBuilder
    private var myButton : some View {
        Button {
            backgroundColor = Color.brown
        } label: {
            Text("Do something")
                .foregroundColor(.blue)
        }
        Text("Hi")
    }
}

struct MyButton: View {
    @Binding var color : Color
    var body: some View {
        Button {
            color = Color.brown
        } label: {
            Text("Do something")
                .foregroundColor(color)
        }
    }
}

struct Meeting4View_Previews: PreviewProvider {
    static var previews: some View {
        Meeting4View()
    }
}
