import SwiftUI

struct DrawingCellView: View {
    var day: Int
    @State private var lines: [Line] = []

    var body: some View {
        ZStack(alignment: .topLeading) {
            Text("\(day)")
                .font(.caption)
                .padding(4)

            DrawingCanvas(lines: $lines)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .gesture(DragGesture(minimumDistance: 0.1)
                            .onChanged { value in
                                let newPoint = value.location
                                if lines.isEmpty {
                                    lines.append(Line(points: [newPoint]))
                                } else {
                                    var lastLine = lines.removeLast()
                                    lastLine.points.append(newPoint)
                                    lines.append(lastLine)
                                }
                            })
        }
    }
}