//
//  Item.swift
//  Lyf
//
//  Created by paaaulo santos on 20/09/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
