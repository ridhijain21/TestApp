//
//  PinController.swift
//  TestApp WatchKit Extension
//
//  Created by Ridhi Jain on 24/04/22.
//

import Foundation
import WatchKit

class PinController: WKInterfaceController{
    @IBOutlet var enterPin: WKInterfaceTextField!
    
    @IBOutlet var mess: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.enterPin.setPlaceholder("_ _ _ _")
        self.enterPin.setText("")
        self.enterPin.setTextContentType(.password)
        self.enterPin.setSecureTextEntry(true)
        mess.setText("Enter your pin")
    }
    
    @IBAction func textFieldAction(_ value: NSString?){
        if value?.length != 4 {
            self.enterPin.setText("")
            mess.setText("Enter 4 digit pin")
            return
        }
        if value == "1234" {
            pushController(withName: "success", context: "Success")
        } else{
            pushController(withName: "failed", context: "Fail")
        }
    }
    
}
