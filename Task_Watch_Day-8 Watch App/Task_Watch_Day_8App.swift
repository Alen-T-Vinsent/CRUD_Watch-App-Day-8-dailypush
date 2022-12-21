//
//  Task_Watch_Day_8App.swift
//  Task_Watch_Day-8 Watch App
//
//  Created by Apple  on 21/12/22.
//

import SwiftUI

@main
struct Task_Watch_Day_8_Watch_AppApp: App {
    let container = PersistenceController.shared.container
    @SceneBuilder var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext,container.viewContext)
        }
    }
   // WKNotificationScene(controller:Notification.self,category:"myCategory")
}
