//
//  libraryTracking.swift
//  libraryTracking
//
//  Created by Joseph Slack on 3/27/18.
//  Copyright © 2018 Joseph Slack. All rights reserved.
//

import Foundation
import MachO
//typealias Void = ()

public func initializeTracking() -> () {
   // initialize package tracking
    let imageCount = _dyld_image_count();
    for i in 0...imageCount {
        let imageName = _dyld_get_image_name(i);
        if (imageName != nil) {
            NSLog("%d - %s", i, _dyld_get_image_name(i));
        }
    }
}
