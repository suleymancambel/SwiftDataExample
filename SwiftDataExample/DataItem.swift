//
//  DataItem.swift
//  SwiftDataExample
//
//  Created by Süleyman Çambel on 12.12.2023.
//

import Foundation
import SwiftData


@Model
class DataItem: Identifiable {
    
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
