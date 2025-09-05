//
//  Shop.swift
//  TouchDown
//
//  Created by Wajd on 06/09/2025.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
