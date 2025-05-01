import SwiftUI

struct Line {
    var points: [CGPoint]
}

struct DrawingCanvas: View {
    @Binding var lines: [Line]

    var body: some View {
        GeometryReader { geo in
            Path { path in
                for line in lines {
                    if let first = line.points.first {
                        path.move(to: first)
                        for point in line.points.dropFirst() {
                            path.addLine(to: point)
                        }
                    }
                }
            }
            .stroke(Color.blue, lineWidth: 1.5)
        }
    }
}