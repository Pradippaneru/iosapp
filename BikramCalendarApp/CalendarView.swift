import SwiftUI

struct CalendarView: View {
    @Binding var selectedDate: Date?
    let columns = Array(repeating: GridItem(.flexible()), count: 7)

    var body: some View {
        LazyVGrid(columns: columns, spacing: 8) {
            ForEach(1...35, id: \.self) { day in
                DrawingCellView(day: day)
                    .frame(width: 45, height: 60)
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 1)
            }
        }
        .padding()
    }
}