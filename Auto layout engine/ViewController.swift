//
//  ViewController.swift
//  Auto layout engine
//
//  Created by Keto Nioradze on 25.10.23.
//

import UIKit

class ViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet private weak var navigationTitle: UILabel!

    @IBOutlet private weak var imageCorners: UIImageView!
    @IBOutlet private weak var coffeeName: UILabel!
    @IBOutlet private weak var coffeeDressing: UILabel!
    @IBOutlet private weak var rate: UILabel!
    @IBOutlet private weak var rateAmount: UILabel!
    @IBOutlet private weak var descriptionTitle: UILabel!
    @IBOutlet private weak var descriptionText: UILabel!
    @IBOutlet private weak var sizeTitle: UILabel!
    @IBOutlet private weak var priceTitle: UILabel!
    @IBOutlet private weak var price: UILabel!
    @IBOutlet private weak var buyButtonText: UIButton!
    
    @IBAction func sizeButtonM(_ sender: UIButton) {
        
    }
    // MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationTitle.text = "Detail"
        coffeeName.text = coffeeCappuccino.productName
        coffeeDressing.text = coffeeCappuccino.productDressing
        rate.text = "\(coffeeCappuccino.productRate)"
        rateAmount.text = "(\(coffeeCappuccino.productRateAmount))"
        descriptionTitle.text = "Description"
        descriptionText.text = coffeeCappuccino.productDescription
        sizeTitle.text = "Size"
        priceTitle.text = "Price"
        price.text = "$\(coffeeCappuccino.productPrice)"
        buyButtonText.setTitle("Buy Now", for: .normal)
        imageCorners.layer.cornerRadius = 16
        

    }
}

// MARK: Struct
struct CoffeeInformation {
    var productName: String
    var productDressing: String
    var productRate: Double
    var productRateAmount: Int
    var productDescription: String
    var productPrice: Double
}

// MARK: Variable
var coffeeCappuccino = CoffeeInformation(productName: "Cappuccino", productDressing: "with Chocolate", productRate: 4.8, productRateAmount: 230, productDescription: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the for...", productPrice: 4.53)
