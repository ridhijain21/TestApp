//
//  InterfaceController.swift
//  TestApp WatchKit Extension
//
//  Created by Ridhi Jain on 17/04/22.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    
    override func willActivate() {
        
    }
    
    override func didDeactivate() {
        
    }
    
    @IBAction func loginButtonTapped() {
        self.pushController(withName: "home", context: nil)
    }
}
