//
//  WidgetView.swift
//  TodoWidgetExtension
//
//  Created by Artem Paliutin on 22.01.2022.
//

import WidgetKit
import SwiftUI

struct TodoWidgetEntryView: View {
    @Environment(\.widgetFamily) var widgetFamily
    var entry: Provider.Entry

    var body: some View {
        switch widgetFamily {
        case .systemMedium:
            MediumSizeView(entry: entry)
        case .systemLarge:
            LargeSizeView(entry: entry)
        default:
            Text("")
        }
    }
}
