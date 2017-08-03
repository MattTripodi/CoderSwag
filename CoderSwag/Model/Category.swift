//
//  Category.swift
//  CoderSwag
//
//  Created by Matt Tripodi on 8/2/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import Foundation

struct Category {
	private(set) public var title: String
	private(set) public var imageName: String
	
	init(title: String, imageName: String) {
		self.title = title
		self.imageName = imageName
	}
}
