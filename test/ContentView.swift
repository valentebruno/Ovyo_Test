import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CarViewModel()
    @State private var selectedCar: Car? = nil
    @State private var isShowingDetail = false

    var body: some View {
        VStack(alignment: .leading) {
            Text("Car Carousel")
                .font(.title)
                .bold()
                .foregroundColor(.orange)
                .padding(.horizontal)

            CarouselView(cars: viewModel.cars, selectedCar: $selectedCar, isShowingDetail: $isShowingDetail)
        }
        .sheet(isPresented: $isShowingDetail) {
            if let car = selectedCar {
                CarDetailView(car: car)
            }
        }
    }
}

struct CarDetailView: View {
    let car: Car

    var body: some View {
        VStack(spacing: 16) {
            Text(car.title)
                .font(.largeTitle)
                .bold()

            Image(car.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 180)
                .cornerRadius(10)

            VStack(alignment: .leading, spacing: 8) {
                Text("Horsepower: \(car.horsepower) hp")
                Text("Top Speed: \(car.topSpeed) km/h")
                Text("Range: \(car.range) km")
            }
            .font(.headline)
            .padding()

            Spacer()
        }
        .padding()
    }
}
