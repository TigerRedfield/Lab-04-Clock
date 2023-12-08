//
//  DetailsInterfaceController.swift
//  Lab-04-Clock-Vasilev WatchKit Extension
//
//  Created by user on 09.12.2023.
//  Copyright © 2023 KITMobile. All rights reserved.
//

import WatchKit
import Foundation



class DetailsInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var recipeIcon: WKInterfaceImage!
    @IBOutlet weak var recipeName: WKInterfaceLabel!
    @IBOutlet weak var recipeImage: WKInterfaceImage!

    @IBOutlet weak var recipeAuthor: WKInterfaceLabel!
    @IBOutlet weak var recipeText: WKInterfaceLabel!
    @IBOutlet weak var recipeRating: WKInterfaceSlider!

    @IBAction func onRatingChange(_ value: Float) {
        print("new rating ", value)
    }
    
    var currentItem : Recipe!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let item = context as? Recipe
        {
            currentItem = item
            
            recipeIcon.setImageNamed(item.icon)
            recipeName.setText(item.name)
            recipeImage.setImageNamed(item.image)
            recipeAuthor.setText(item.author)
            recipeText.setText(item.text)
            //recipeRating.setValue(Float(item.rating))
        }
        
        // Configure interface objects here.
    }

    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        return currentItem.text
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
