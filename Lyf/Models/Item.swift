//
//  Item.swift.swift
//  Lyf
//
//  Created by paaaulo santos on 20/09/25.
//

import SwiftData
import Foundation

@Model
final class Item {
    @Attribute(.unique) var id: UUID
    var name: String

    init(name: String = "Exemplo") {
        self.id = UUID()
        self.name = name
    }
}
