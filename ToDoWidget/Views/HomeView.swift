//
//  HomeView.swift
//  ToDoWidget
//
//  Created by Artem Paliutin on 22.01.2022.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var vm: TodoViewModel
    
    var body: some View {
        NavigationView {
            List(vm.todos) { todo in
                Button {
                    vm.selectedTodo = todo
                } label: {
                    RowListView(todo: todo)
                }

            }
            .listStyle(.sidebar)
            .navigationTitle("Todos")
            .task {
                await vm.taskTodos()
            }
            .sheet(item: $vm.selectedTodo, onDismiss: nil) { todo in
                TodoView(todo: todo)
            }
            .onOpenURL { url in
                guard
                    url.scheme == "myapp",
                    url.host == "todo",
                    let id = Int(url.pathComponents[1]) else {
                        return
                    }
                Task {
                    do {
                        let todo = try await TodoService.shared.getTodo(with: id)
                        DispatchQueue.main.async {
                            vm.selectedTodo = todo
                        }
                    } catch {
                        print(error.localizedDescription)
                    }
                }
            }
        }
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(TodoViewModel())
    }
}
