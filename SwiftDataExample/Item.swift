//
//  Item.swift
//  SwiftDataExample
//
//  Created by Süleyman Çambel on 12.12.2023.
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
