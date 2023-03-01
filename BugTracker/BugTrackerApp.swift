//
//  BugTrackerApp.swift
//  BugTracker
//
//  Created by Jill Allan on 27/02/2023.
//

import SwiftUI

@main
struct BugTrackerApp: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
            .environment(\.managedObjectContext, dataController.container.viewContext)
            .environmentObject(dataController)
        }
    }
}
