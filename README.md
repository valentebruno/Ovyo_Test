# Car Carousel App – SwiftUI

A simple SwiftUI app showcasing a **horizontal car carousel** with **tap-to-view technical details** in a modal sheet. Ideal for learning how to build scrollable views, manage state, and present modals in SwiftUI.

## Features
- Horizontal **car carousel** (`ScrollView`)
- Tap on a car to show **technical specs** in a sheet
- Clean MVVM architecture
- Simple data model using `@Published` and `@StateObject`


##  Architecture
- **Model**: `Car` – conforms to `Identifiable` and `Codable`
- **ViewModel**: `CarViewModel` – loads and manages car data
- **Views**: `ContentView`, `CarouselView`, `CarDetailView`

## Technologies Used

- Swift 5.9+
- SwiftUI
- Xcode 15+
- MVVM pattern

##Project Structure

├── Car.swift
├── CarViewModel.swift
├── ContentView.swift
├── CarouselView.swift
├── CarDetailView.swift
└── Assets.xcassets (with car images)

## 🔧 Setup

1. Clone the repository:

bash
git clone https://github.com/yourusername/CarCarouselApp.git

2. Open in Xcode:

bash
cd CarCarouselApp
open CarCarouselApp.xcodeproj

3. Add images to `Assets.xcassets` with names matching your `imageName` fields (e.g. `car1`, `car2`, etc.)

4. Build & run the app in iPhone simulator or device.

## Example Car Data

swift
Car(id: 1, title: "Tesla Model S", imageName: "car1", horsepower: 670, topSpeed: 250, range: 652)


## Learning Goals

- Bindings via `@Binding` and `@State`
- Sheets in SwiftUI
- Basic animations with `ScrollView`
- Building reusable components

## License

MIT License. Feel free to fork and modify!

Made with ❤️ using SwiftUI.
