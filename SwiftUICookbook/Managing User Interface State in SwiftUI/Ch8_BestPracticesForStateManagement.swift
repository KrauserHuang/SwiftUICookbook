//
//  Ch8_BestPracticesForStateManagement.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/21.
//

import SwiftUI

struct Ch8_BestPracticesForStateManagement: View {
    
    @StateObject var taskManager = TaskManager()
    
    var body: some View {
        TaskListView()
            .environmentObject(taskManager)
    }
}

class TaskManager: ObservableObject {
    @Published var tasks: [String] = []
    
    func addTask(_ task: String) {
        tasks.append(task)
    }
}

struct TaskListView: View {
    
    @EnvironmentObject var taskManager: TaskManager
    @State private var newTask: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("New Task", text: $newTask)
                    .onSubmit {
                        if !newTask.isEmpty {
                            taskManager.addTask(newTask)
                            newTask = ""
                        }
                    }
                    .padding()
                List(taskManager.tasks, id: \.self) { task in
                    Text(task)
                }
            }
            .navigationTitle("Task List")
        }
    }
}

#Preview {
    Ch8_BestPracticesForStateManagement()
}
