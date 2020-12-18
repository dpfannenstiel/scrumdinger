//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Dustin Pfannenstiel on 12/18/20.
//

import SwiftUI

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
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
