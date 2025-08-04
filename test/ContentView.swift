//
//  ContentView 2.swift
//  test
//
//  Created by Bruno Valente on 04/08/25.
//


import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CarViewModel()

    var body: some View {
        VStack(alignment: .leading) {
            Text("Car Carousel")
                .font(.title)
                .padding(.horizontal)

            HorizontalCarouselView(cars: viewModel.cars)
        }
    }
}