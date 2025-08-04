import SwiftUI

struct CarouselView: View {
    let cars: [Car]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(cars) { car in
                    VStack(alignment: .leading) {
                        Image(car.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 260, height: 150)
                            .clipped()
                            .cornerRadius(12)

                        Text(car.title)
                            .font(.headline)
                            .foregroundColor(.primary)
                    }
                    .frame(width: 260)
                }
            }
            .padding(.horizontal)
        }
    }
}