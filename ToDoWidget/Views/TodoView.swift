//
//  TodoView.swift
//  ToDoWidget
//
//  Created by Artem Paliutin on 22.01.2022.
//

import SwiftUI

struct TodoView: View {
    
    let todo: Todo
    
    var body: some View {
        GroupBox {
            VStack {
                HStack {
                    Text("Todo # \(todo.id)")
                        .fontWeight(.light)
                    
                    Image(systemName: todo.completed ? "checkmark.circle" : "circle")
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(.green)
                }
                .font(.headline)
                
                Text(todo.title.capitalized)
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
        }
    }
}










struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TodoView(todo: Todo(userId: 1, id: 1, title: "Title", completed: true))
                .previewLayout(.sizeThatFits)
            .padding()
            TodoView(todo: Todo(userId: 1, id: 1, title: "Title", completed: true))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
