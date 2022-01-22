//
//  TodoService.swift
//  ToDoWidget
//
//  Created by Artem Paliutin on 22.01.2022.
//

import Foundation

final class TodoService {
    static let shared = TodoService()
    
    private let baseURL = "https://jsonplaceholder.typicode.com/"
    
    // A generic helper function to fetch some Decodable T from a given URL
    private func fetch<T: Decodable>(endpoint: String) async throws -> T {
        let url = baseURL + endpoint
        
        guard let url = URL(string: url) else {
            throw URLError(.badURL)
        }
        
        // The second return value is a URLResponse, that you can use to check the server's response to your request
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let result = try JSONDecoder().decode(T.self, from: data)
        
        return result
    }
    
    // MARK: func
    
    // getAllTodos
    func getAllTodos() async throws -> [Todo] {
        let todos: [Todo] = try await fetch(endpoint: "todos/")
        return todos
    }
    
    // getTodo
    func getTodo(id: Int) async throws -> Todo {
        let todo: Todo = try await fetch(endpoint: "todos/\(id)")
        return todo
    }
}
