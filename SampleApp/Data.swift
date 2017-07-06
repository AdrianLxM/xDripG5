//
//  Data.swift
//  xDripG5
//
//  Created by Pete Schwamb on 7/5/17.
//  Copyright © 2017 LoopKit Authors. All rights reserved.
//

import Foundation

extension Data {
    var hexadecimalString: String {
        let string = NSMutableString(capacity: count * 2)
        
        for byte in self {
            string.appendFormat("%02x", byte)
        }
        
        return string as String
    }
}
