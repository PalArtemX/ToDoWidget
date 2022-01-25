//
//  LargeSizeView.swift
//  TodoWidgetExtension
//
//  Created by Artem Paliutin on 23.01.2022.
//

import SwiftUI
import WidgetKit

struct LargeSizeView: View {
    var entry: SimpleEntry
    
    var body: some View {
        VStack {
            HStack {
                Text("Todos")
                
                Text(Date.now, format: .dateTime)
                
                Spacer()
            }
            .padding()
            
            ForEach(0..<6, id: \.self) { _ in
                Link(destination: URL(string: "myapp://todo/1")!, label: {
                    HStack {
                        Circle()
                            .stroke(lineWidth: 2)
                            .frame(width: 30, height: 30)
                            .overlay {
                                if true {
                                    Image(systemName: "chekmark")
                                }
                            }
                        
                        Text("todo title")
                        
                        Spacer()
                    }
                })
                .padding(.horizontal)
                
                Divider()
            }
            Spacer()
        }
    }
}











