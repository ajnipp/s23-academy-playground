//
//  ToDoItem.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 2/28/23.
//

import Foundation

struct ToDoItem: Identifiable {
    var id = UUID()
    var content: String
    var isDone: Bool
}
