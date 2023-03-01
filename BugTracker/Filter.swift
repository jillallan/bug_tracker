//
//  Filter.swift
//  BugTracker
//
//  Created by Jill Allan on 01/03/2023.
//

import Foundation

struct Filter: Identifiable, Hashable {
    var id: UUID
    var name: String
    var icon: String
    var minModificationDate: Date = Date.distantPast
    var tag: Tag?
    
    static var all = Filter(id: UUID(), name: "All Issues", icon: "tray")
    static var recent = Filter(id: UUID(), name: "Recent", icon: "clock", minModificationDate: .now.addingTimeInterval(86400 * -7))
    
    // Custom conformance to hashable
    // https://developer.apple.com/documentation/swift/hashable/
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func ==(lhs: Filter, rhs: Filter) -> Bool {
        lhs.id == rhs.id
    }
}
