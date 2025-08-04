//
//  CarViewModel.swift
//  test
//
//  Created by Bruno Valente on 04/08/25.
//

import Foundation

class CarViewModel: ObservableObject {
    @Published var cars: [Car] = []

    init() {
        loadCars()
    }

    private func loadCars() {
        cars = [
            Car(id: 1, title: "Tesla Model S", imageName: "car1", horsepower: 670, topSpeed: 250, range: 652),
            Car(id: 2, title: "Ford Mustang", imageName: "car2", horsepower: 480, topSpeed: 240, range: 500),
            Car(id: 3, title: "Chevrolet Camaro", imageName: "car3", horsepower: 369, topSpeed: 250, range: 550)
        ]
    }
}
