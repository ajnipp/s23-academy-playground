//
//  ToDoView.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 2/28/23.
//

import SwiftUI

struct ToDoView: View {
    @State var todo: ToDoItem
    var body: some View {
        HStack {
            Button {
                todo.isDone.toggle()
            } label: {
                Image(systemName: "circle.fill")
                    .foregroundColor(todo.isDone ? .blue : .white)
            }
            Text(todo.content)
        }
    }
}

struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView(todo: ToDoItem(content: "Hi", isDone: false))
    }
}
