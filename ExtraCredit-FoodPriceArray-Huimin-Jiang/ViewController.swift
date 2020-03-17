//
//  ViewController.swift
//  ExtraCredit-FoodPriceArray-Huimin-Jiang
//
//  Created by Huimin Jiang on 3/16/20.
//  Copyright © 2020 Huimin Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    
    @IBOutlet weak var foodNamePriceLabel: UILabel!
    
    let foodImageArray:[String] = ["chicken", "hamburger", "noodle", "pasta", "pizza", "salad", "steak"]
    
    let foodNameArray: [String] = ["Roasted Chicken", "Classic Burger", "Chicken Noodle Soup", "Bow-Tie Pasta", "Pepperoni Pizza", "Italian Salad", "Grilled Steak"]
    
    let foodPriceArray: [Double] = [13.99, 13.99, 11.99, 12.99, 11.99, 10.99, 15.99]
    
    var foodIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //this is the first screen when your app is loaded
        
        // setup the image to be the chicken, the price to be the price for chicken dish
        
        foodImageView.image = UIImage(named: foodImageArray[0])
        
        print(foodImageArray[0])
        
        foodNamePriceLabel.text = foodNameArray[0] + ": $" + "\(foodPriceArray[0])"
    }


    @IBAction func nextDishButtonClicked(_ sender: UIButton) {
        
        foodIndex = foodIndex + 1
        //make sure that the chicken is going to show after the steak
        if foodIndex == foodImageArray.count{
            foodIndex = 0
        }
        foodImageView.image = UIImage(named:foodImageArray[foodIndex])
        
        foodNamePriceLabel.text = foodNameArray[foodIndex] + ": $" + "\(foodPriceArray[foodIndex])"

    }
    
    
}

