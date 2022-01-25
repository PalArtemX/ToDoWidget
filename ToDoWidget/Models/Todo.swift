//
//  Todo.swift
//  ToDoWidget
//
//  Created by Artem Paliutin on 22.01.2022.
//

import Foundation

// url: https://jsonplaceholder.typicode.com/todos

struct Todo: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}


extension Todo {
   static func placeholder(_ id: Int) -> Todo {
        Todo(userId: 0, id: id, title: "Placeholder", completed: .random())
    }
}
