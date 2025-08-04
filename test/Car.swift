//
//  Car.swift
//  test
//
//  Created by Bruno Valente on 04/08/25.
//
import Foundation

struct Car: Identifiable, Codable {
    let id: Int
    let title: String
    let imageName: String
    let horsepower: Int
    let topSpeed: Int
    let range: Int
}
