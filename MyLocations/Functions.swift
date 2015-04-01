//
//  Functions.swift
//  MyLocations
//
//  Created by 刘迪 on 3/28/15.
//  Copyright (c) 2015 roy. All rights reserved.
//

import Foundation
import Dispatch


func afterDelay(seconds: Double, closure: () -> ()) {
    let when = dispatch_time(DISPATCH_TIME_NOW, Int64(seconds * Double(NSEC_PER_SEC)))
    dispatch_after(when, dispatch_get_main_queue(), closure)
}

let applicationDocumentsDirectory: String = {
    let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as [String]
    
    return paths[0]
}()