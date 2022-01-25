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
                
                VStack {
                    Text("todo title")
                        .font(.headline)
                    
                    Image(systemName: "checkmark.circle")
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(.green)
                }
                
                Spacer()
            }
        } label: {
            Text("Todos")
            Image(systemName: "list.dash")
                .symbolRenderingMode(.hierarchical)
        }
        .widgetURL(URL(string: "myapp://todo/1"))

    }
}











