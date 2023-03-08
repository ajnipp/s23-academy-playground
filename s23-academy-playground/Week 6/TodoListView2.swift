//
//  Week6View.swift
//  s23-academy-playground
//
//  Created by Samuel Shi on 3/7/23.
//

import SwiftUI

struct TodoListView2: View {
    @State private var textValue = ""
    @State private var todos = [ToDoItem(content: "Walk dog", isDone: false)]
        
    var body: some View {
        List {
            Section("Enter Todo") {
                TextField("Enter", text: $textValue)
            }
            .onSubmit {
                todos.append(ToDoItem(content: textValue, isDone: false))
                textValue = ""
            }

            Section("List") {
                ForEach(todos) { todo in
                    ToDoView(todo: todo)
                }
            }

            // MARK: Second List

            Section("List 2") {
                ForEach(todos) { todo in
                    ToDoView(todo: todo)
                }
            }
        }
    }
}

struct Week6View_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView2()
    }
}
