//
//  ToDoWidgetApp.swift
//  ToDoWidget
//
//  Created by Artem Paliutin on 22.01.2022.
//

import SwiftUI

@main
struct ToDoWidgetApp: App {
    
    @StateObject var vm = TodoViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(vm)
        }
    }
}
