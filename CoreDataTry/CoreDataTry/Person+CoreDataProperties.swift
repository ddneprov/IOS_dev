//
//  Person+CoreDataProperties.swift
//  CoreDataTry
//
//  Created by Днепров Данила on 18/09/2019.
//  Copyright © 2019 Днепров Данила. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16

}
