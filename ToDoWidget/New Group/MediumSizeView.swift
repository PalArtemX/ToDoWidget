//
//  MediumSizeView.swift
//  TodoWidgetExtension
//
//  Created by Artem Paliutin on 23.01.2022.
//

import SwiftUI
import WidgetKit

struct MediumSizeView: View {
    var entry: SimpleEntry
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "person")
                    .symbolRenderingMode(.hierarchical)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.secondary)
                Divider()
                
                if let todo = entry.todos.first {
                    VStack {
                        Text(todo.title)
                            .font(.headline)
                        
                        Image(systemName: todo.completed ? "checkmark.circle" : "circle")
                            .symbolRenderingMode(.hierarchical)
                            .foregroundColor(.green)
                    }
                }
                
                Spacer()
            }
        } label: {
            Text("Todos")
            Image(systemName: "list.dash")
                .symbolRenderingMode(.hierarchical)
        }
        .widgetURL(URL(string: "myapp://todo/\(entry.todos.first?.id ?? 0)"))

    }
}











