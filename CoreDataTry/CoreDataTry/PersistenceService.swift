//
//  PersistenceService.swift
//  CoreDataTry
//
//  Created by Днепров Данила on 18/09/2019.
//  Copyright © 2019 Днепров Данила. All rights reserved.
//

import Foundation
import CoreData

class PersistenceService{
    // MARK: - Core Data stack
    
    
    private init(){}
    
    static var context: NSManagedObjectContext{
        return persistentContainer.viewContext
    }
    
    
    
    
    
    static var persistentContainer: NSPersistentContainer = {
        /*
         Постоянный контейнер для приложения. Эта реализация
         создает и возвращает контейнер, загрузив хранилище для
         применение к нему. Это свойство является необязательным, так как есть законные
         условия ошибки, которые могут привести к сбою создания хранилища.
         */
        let container = NSPersistentContainer(name: "CoreDataTry")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Замените эту реализацию кодом для обработки ошибки соответствующим образом.
                // fatalError () приводит к тому, что приложение создает журнал сбоев и завершает работу. Вы не должны использовать эту функцию в приложении доставки, хотя это может быть полезно во время разработки.
                
                /*
                 Типичные причины ошибки здесь включают:
                 * Родительский каталог не существует, не может быть создан или запрещает запись.
                 * Постоянное хранилище недоступно из-за разрешений или защиты данных, когда устройство заблокировано.
                 * Устройство находится вне пространства.
                 * Хранилище не удалось перенести в текущую версию модели.
                 Проверьте сообщение об ошибке, чтобы определить, что фактическая проблема была.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    static func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
                print("___SAVE___")
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}

