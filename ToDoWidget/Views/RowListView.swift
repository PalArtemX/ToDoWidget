//
//  RowListView.swift
//  ToDoWidget
//
//  Created by Artem Paliutin on 22.01.2022.
//

import SwiftUI

struct RowListView: View {
    
    let todo: Todo
    
    var body: some View {
        HStack {
            Text(todo.title.capitalized)
            Spacer()
            Image(systemName: todo.completed ? "checkmark.circle" : "circle")
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.green)
        }
        .font(.headline)
        
    }
}










struct RowListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RowListView(todo: Todo(userId: 1, id: 1, title: "title", completed: true))
                .previewLayout(.sizeThatFits)
                .padding()
            RowListView(todo: Todo(userId: 1, id: 1, title: "title", completed: false))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
