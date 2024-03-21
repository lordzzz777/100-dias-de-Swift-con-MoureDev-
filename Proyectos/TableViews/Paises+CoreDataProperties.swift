//
//  Paises+CoreDataProperties.swift
//  TableViews
//
//  Created by Esteban Perez Castillejo on 21/3/24.
//  Copyright © 2024 MoureDev. All rights reserved.
//
//

import Foundation
import CoreData


extension Paises {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Paises> {
        return NSFetchRequest<Paises>(entityName: "Paises")
    }

    @NSManaged public var nombre: String?

}

extension Paises : Identifiable {

}
