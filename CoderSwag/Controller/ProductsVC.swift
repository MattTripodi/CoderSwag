//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by Matt Tripodi on 8/2/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
	
	@IBOutlet weak var productCollectionView: UICollectionView!
	
	private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
		productCollectionView.delegate = self
		productCollectionView.dataSource = self
    }
	
	func initProducts(category: Category) {
		products = DataService.instance.getProducts(forCategoryTitle: category.title)
		navigationItem.title = category.title
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return products.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
			let product = products[indexPath.row]
			cell.updateViews(product: product)
			return cell
		}
		return ProductCell()
	}

}
