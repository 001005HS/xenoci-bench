import SwiftUI

final class CounterModel: ObservableObject {
    @Published private(set) var count = 0
    func increment() { count += 1 }
    func reset() { count = 0 }
}

struct ContentView: View {
    @StateObject private var model = CounterModel()
    @State private var name = ""
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("\(model.count)")
                    .font(.system(size: 64, weight: .bold))
                    .accessibilityIdentifier("count")
                HStack {
                    Button("더하기") { model.increment() }
                        .buttonStyle(.borderedProminent)
                        .accessibilityIdentifier("plus")
                    Button("처음으로") { model.reset() }
                        .accessibilityIdentifier("reset")
                }
                TextField("이름", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .accessibilityIdentifier("name")
                    .padding(.horizontal)
                Text(name.isEmpty ? "이름을 적어 주세요" : "안녕하세요, \(name)님")
                    .accessibilityIdentifier("greeting")
                List(1...40, id: \.self) { i in
                    Text("행 \(i)").accessibilityIdentifier("row-\(i)")
                }
                .accessibilityIdentifier("rows")
            }
            .navigationTitle("macbox 시험")
        }
    }
}
