//
//  Documents+CoreDataClass.swift
//  Documents
//
//  Created by Jessica Elizabeth Sellers on 8/29/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Documents)
public class Documents: NSManagedObject {
    
    var date:Date? {
    get {
        return modified as Date?
    }
        set {
            modified = newValue
        }
    
    }
    
    convenience init?(size: Double, content: String, name: String, modified: Date){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let Context = appDelegate?.persistentContainer.viewContext else{
            return nil
        }
        
        self.init(entity: Documents.entity(), insertInto: Context)
        
        self.name = name
        self.size = size
        self.content = content
        self.date = modified
}
}
