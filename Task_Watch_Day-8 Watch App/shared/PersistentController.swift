////
////  PersistentContainer.swift
////  Task_Watch_Day-8 Watch App
////
////  Created by Apple  on 01/01/23.
////
//
//import CoreData
//
//struct PersistentController{
//    static let shared = PersistentController()
//    
//    //if you want preview use that
//    
//    let container:NSPersistentContainer
//    
//    init(inMemory:Bool = false){
//        container = NSPersistentContainer(name: "Task")
//        if inMemory{
//            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "dev/null")
//        }
//        container.loadPersistentStores { NSPersistentStoreDescription, error in
//            if let error = error as NSError? {
//                fatalError("Unresolved error \(error),\(error.userInfo)")
//            }
//        }
//        
//    }
//}
