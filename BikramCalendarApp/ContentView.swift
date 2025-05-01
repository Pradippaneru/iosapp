import SwiftUI

struct ContentView: View {
    @State private var selectedDate: Date? = nil
    @State private var monthNote: String = ""

    var body: some View {
        HStack {
            VStack {
                Text("Bikram Sambat 2082")
                    .font(.largeTitle)
                    .padding()

                CalendarView(selectedDate: $selectedDate)
                    .frame(maxWidth: .infinity)
            }

            Divider()

            VStack(alignment: .leading) {
                Text("Monthly Notes")
                    .font(.headline)
                TextEditor(text: $monthNote)
                    .frame(minHeight: 400)
                    .padding()
                    .border(Color.gray)

                Spacer()
            }
            .frame(width: 250)
            .padding()
        }
    }
}