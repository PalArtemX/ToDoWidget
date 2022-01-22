//
//  Todo.swift
//  ToDoWidget
//
//  Created by Artem Paliutin on 22.01.2022.
//

import Foundation

struct Todo: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
