import SwiftUI

struct HorizontalCarouselView: View {
    let cars: [Car]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(cars) { car in
                    VStack(alignment: .leading) {
                        Image(car.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 240, height: 140)
                            .clipped()
                            .cornerRadius(12)

                        Text(car.title)
                            .font(.headline)
                            .foregroundColor(.primary)
                    }
                    .frame(width: 240)
                }
            }
            .padding(.horizontal)
        }
    }
}