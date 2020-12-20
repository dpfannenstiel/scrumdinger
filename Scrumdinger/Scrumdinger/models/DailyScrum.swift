//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Dustin Pfannenstiel on 12/18/20.
//

import SwiftUI

struct DailyScrum: Identifiable, Codable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    var history: [History]

    internal init(
        id: UUID = UUID(),
        title: String,
        attendees: [String],
        lengthInMinutes: Int,
        color: Color,
        history: [History] = []
    ) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
        self.history = history
    }
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(
                title: "Command",
                attendees: [
                    "Picard",
                    "Riker",
                    "Data",
                    "LaForge",
                    "Crusher, B",
                    "Worf",
                    "Troi",
                    "Laren",
                    "Crusher, Why"
                ],
                lengthInMinutes: 180,
                color: Color(red: 200/255.0, green: 50/255.0, blue: 130/255.0)
            ),
            DailyScrum(
                title: "Medical",
                attendees: [
                    "Crusher, B",
                    "Hacopian",
                    "Martin",
                    "Ogawa",
                    "Selar",
                ],
                lengthInMinutes: 60,
                color: Color(red: 0/255.0, green: 190/255.0, blue: 170/255.0)
            ),
            DailyScrum(
                title: "Engineering",
                attendees: [
                    "LaForge",
                    "Barclay",
                    "Kwan",
                    "MacDougal",
                    "Marquez",
                    "O'Brien",
                    "Robinson",
                    "Sutter",
                    "Umbato"
                ],
                lengthInMinutes: 5,
                color: Color(red: 220/255.0, green: 160/255.0, blue: 80/255.0)
            )
        ]
    }
}

extension DailyScrum {
    struct Data {
        var title: String = ""
        var attendees: [String] = []
        var lengthInMinutes: Double = 5.0
        var color: Color = .random
    }

    /// A copy of the daily scrum as `Data`
    var data: Data {
        return Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), color: color)
    }

    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
        lengthInMinutes = Int(data.lengthInMinutes)
        color = data.color
    }
}
