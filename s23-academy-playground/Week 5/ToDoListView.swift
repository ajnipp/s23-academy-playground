//
//  ToDoListView.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 2/28/23.
//

import SwiftUI

struct ToDoListView: View {
    @State private var todos: [ToDoItem] = []
    @State private var text: String = ""
    var body: some View {
        List {
            Section {
                TextField("Todo", text: $text)
                    .onSubmit {
                        todos.append(ToDoItem(content: text, isDone: false))
                    }
            }

            ForEach(todos) { todo in
                ToDoView(todo: todo)
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
