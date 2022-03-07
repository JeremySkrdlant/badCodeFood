//
//  MealPlanTableViewController.swift
//  BadCodeFoodExample
//
//  Created by Jeremy Skrdlant on 3/6/22.
//
//  Students will convert this code to use an array of structs instead of a bunch of global variables.

import UIKit

class MealPlanTableViewController: UITableViewController {
    
    //sample data
    var morningMealName = "Avacado Toast"
    var morningMealDescription = "Fresh cut avacado on top of toasted Rye bread and arugala with a drizzle of olive oil and salt and pepper"
    var morningMealCalories = 260
    var morningMealCost = 3.50
    var lunchMealName = "A Gouda Burger"
    var lunchMealDescription = "Fresh Shredded Smoked Gouda Cheese mixed in with a 1/3 pound of beef is fried and placed on top of a toasted potato bun with grilled onions."
    var lunchMealCalories = 700
    var lunchMealCost = 5.75
    var dinnerMealName = "Spicy Glazed Beef and Snow Peas"
    var dinnerMealDescription = "This beef dish with poblano peppers and snow peas is coated with Hoisen sauce and placed on a bed of rice."
    var dinnerMealCalories = 600
    var dinnerMealCost = 5.55
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("👋 Hello.")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        //There can only be one.
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //3 meals so all good.
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodCell

        // Configure the cell...
        if (indexPath.row == 0){
            cell.foodName.text = morningMealName
            cell.foodDescription.text = morningMealDescription
            cell.caloriesAndCost.text = "\(morningMealCalories) cal. for \(morningMealCost.formatted(.currency(code: "usd")))"
        }
        
        if (indexPath.row == 1){
            cell.foodName.text = lunchMealName
            cell.foodDescription.text = lunchMealDescription
            cell.caloriesAndCost.text = "\(lunchMealCalories) cal. for \(lunchMealCost.formatted(.currency(code: "usd")))"
        }
        
        if (indexPath.row == 2){
            cell.foodName.text = dinnerMealName
            cell.foodDescription.text = dinnerMealDescription
            cell.caloriesAndCost.text = "\(dinnerMealCalories) cal. for \(dinnerMealCost.formatted(.currency(code: "usd")))"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

class FoodCell:UITableViewCell{
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodDescription: UILabel!
    @IBOutlet weak var caloriesAndCost: UILabel!
}
