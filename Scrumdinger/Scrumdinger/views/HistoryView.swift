//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by Dustin Pfannenstiel on 12/19/20.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

extension History {
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendees)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(
            history: History(
                attendees: [
                    "Jon",
                    "Darla",
                    "Luis"
                ],
                lengthInMinutes: 10,
                transcript: "Now is the time for all good men to come to the aid of their country."
            )
        )
    }
}
