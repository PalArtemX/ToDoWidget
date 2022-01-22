//
//  TodoViewModel.swift
//  ToDoWidget
//
//  Created by Artem Paliutin on 22.01.2022.
//

import Foundation

class TodoViewModel: ObservableObject {
    @Published var todos: [Todo] = []
    @Published var selectedTodo: Todo?
    
    
    // MARK: - Functions
    // MARK: - taskTodos
    func taskTodos() async  {
        do {
            todos = try await TodoService.shared.getAllTodos()
        } catch {
            print(error.localizedDescription)
        }
    }
}
