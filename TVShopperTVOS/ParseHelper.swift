//
//  ParseHelper.swift
//  TVShopperTVOS
//
//  Created by Thanasi Stratigakis on 11/8/15.
//  Copyright © 2015 TVWatchers. All rights reserved.
//

import UIKit
import Foundation


class ParseHelper: NSObject {
    
    
    static func queryItemForName(name: String, callBack: ([PFObject]) -> Void) {
        
        let query = PFQuery(className: "Items")
        
        query.whereKey("Name", equalTo: name)
        query.includeKey("Name")
//        query.includeKey("Description")
//        query.includeKey("Price")
        query.findObjectsInBackgroundWithBlock { (results, error) -> Void in
            callBack(results!)
            print(results)
        
        }
        
    }
    
    
    static func queryBoostedBoard() {
        let query = PFQuery(className:"Items")
        query.getObjectInBackgroundWithId("KXE4JIeG7P") {
            (product: PFObject?, error: NSError?) -> Void in
            if error == nil && product != nil {
                print(product)
            } else {
                print(error)
            }
        }
    }
    
    static func queryIPhone() {
        let query = PFQuery(className:"Items")
        query.getObjectInBackgroundWithId("NxkNHPjSns") {
            (product: PFObject?, error: NSError?) -> Void in
            if error == nil && product != nil {
                print(product)
            } else {
                print(error)
            }
        }
    }
    
    static func queryRoku() {
        let query = PFQuery(className:"Items")
        query.getObjectInBackgroundWithId("ue31pDZf2e") {
            (product: PFObject?, error: NSError?) -> Void in
            if error == nil && product != nil {
                print(product)
            } else {
                print(error)
            }
        }

    }
    
}
