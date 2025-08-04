# Car Carousel App – SwiftUI

A simple SwiftUI app showcasing a **horizontal car carousel** with **tap-to-view technical details** in a modal sheet. Ideal for learning how to build scrollable views, manage state, and present modals in SwiftUI.

##Features

- Horizontal **car carousel** (`ScrollView`)
- Tap on a car to show **technical specs** in a sheet
- Clean MVVM architecture
- Simple data model using `@Published` and `@StateObject`

##Preview

| Carousel View | Detail Sheet |
|---------------|--------------|
| ![carousel](preview_carousel.png) | ![details](preview_details.png) |

## Architecture

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
