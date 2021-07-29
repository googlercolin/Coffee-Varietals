//
//  CoffeeModel.swift
//  CoffeeModel
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

// MARK: COFFEE DATA MODEL

struct Coffee: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var description: String
    var plantInfo: [String]
    var beanInfo: [String]
}
