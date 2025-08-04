//
//  HorizontalCarouselView.swift
//  test
//
//  Created by Bruno Valente on 04/08/25.
//
import SwiftUI

struct  HorizontalCarouselView: View {
    let cars: [Car]
    @Binding var selectedCar: Car?
    @Binding var isShowingDetail: Bool

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(cars) { car in
                    Button(action: {
                        selectedCar = car
                        isShowingDetail = true
                    }) {
                        VStack {
                            Image(car.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 120)
                                .cornerRadius(12)
                            Text(car.title)
                                .font(.headline)
                                .padding(.top, 4)
                        }
                        .frame(width: 200)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.horizontal)
        }
    }
}
