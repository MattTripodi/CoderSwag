//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by Matt Tripodi on 8/2/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
	
	@IBOutlet weak var categoryImage: UIImageView!
	@IBOutlet weak var categoryTitle: UILabel!

	func updateViews(category: Category) {
		categoryImage.image = UIImage(named: category.imageName)
		categoryTitle.text = category.title
	}

}
