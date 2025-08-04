import Foundation

class CarViewModel: ObservableObject {
    @Published var cars: [Car] = []

    init() {
        loadCars()
    }

    private func loadCars() {
        guard let url = Bundle.main.url(forResource: "cars", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let decodedCars = try? JSONDecoder().decode([Car].self, from: data) else {
            print("Failed to load cars.json")
            return
        }

        self.cars = decodedCars
    }
}