//
//  DataService.swift
//  CoderSwag
//
//  Created by Matt Tripodi on 8/2/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import Foundation

class DataService {
	static let instance = DataService()
	
	private let categories = [
		Category(title: "SHIRTS", imageName: "shirts.png"),
		Category(title: "HOODIES", imageName: "hoodies.png"),
		Category(title: "HATS", imageName: "hats.png"),
		Category(title: "DIGITAL", imageName: "digital.png")
	]
	
	func getCategories() -> [Category] {
		return categories
	}
}
