//
//  DescriptionInterfaceController.swift
//  Lab-04-Clock-Vasilev WatchKit Extension
//
//  Created by user on 09.12.2023.
//  Copyright © 2023 KITMobile. All rights reserved.
//

import WatchKit
import Foundation


class DescriptionInterfaceController: WKInterfaceController {

            @IBOutlet weak var longText: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let text = context as? String
        {
            longText.setText(text)
        }
        
        // Configure interface objects here.
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
