//
//  ContentView.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Nested View") {
                    NestedView()
                }
                
                NavigationLink("Instagram View") {
                    InstagramView()
                }
                
                NavigationLink("Demo 4") {
                    Demo4()
                }
                
                NavigationLink("Meeting 4 View") {
                    Meeting4View()
                }
                
                NavigationLink("Meeting 5 View") {
                    Meeting5View()
                }
                
                NavigationLink("Tab Example") {
                    TabExample()
                }
                
                NavigationLink("Todo List View") {
                    ToDoListView()
                }
                
                NavigationLink("Todo List View 2") {
                    TodoListView2()
                }
                
                NavigationLink("User View") {
                    UserView()
                }
            }
            .navigationTitle("Academy Playground")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
