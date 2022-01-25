//
//  TodoWidget.swift
//  TodoWidget
//
//  Created by Artem Paliutin on 22.01.2022.
//

import WidgetKit
import SwiftUI


@main
struct TodoWidget: Widget {
    let kind: String = "TodoWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            TodoWidgetEntryView(entry: entry)
        }
        .supportedFamilies([.systemLarge, .systemMedium])
        .configurationDisplayName("Todos")
        .description("This is Todos app")
    }
}










struct TodoWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TodoWidgetEntryView(entry: SimpleEntry(date: Date(), todos: [.placeholder(0)]))
                .previewContext(WidgetPreviewContext(family: .systemMedium))
            TodoWidgetEntryView(entry: SimpleEntry(date: Date(), todos: [.placeholder(1)]))
                .previewContext(WidgetPreviewContext(family: .systemLarge))
        }
    }
}
