//
//  HomeController.swift
//  TestApp WatchKit Extension
//
//  Created by Ridhi Jain on 19/04/22.
//

import Foundation
import WatchKit

class HomeController: WKInterfaceController{
    
    @IBOutlet var actionTable: WKInterfaceTable!
    
    let actions = ["myCiti", "Payments", "Near Me", "Logout"]
    let screenName = ["myCiti", "payments", "nearMe", "login"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        loadHomeActions()
    }
    
    override func willActivate() {
        
    }
    
    override func didDeactivate() {
        
    }
    
    private func loadHomeActions() {
        actionTable.setNumberOfRows(actions.count, withRowType: "RowController")
        for(index, rowModel) in actions.enumerated(){
            if let rowController = actionTable.rowController(at: index) as? RowController {
                rowController.homeActions.setText(rowModel)
            }
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        if rowIndex == actions.count-1 {
            self.popToRootController()
        } else{
            pushController(withName: screenName[rowIndex], context: nil)
        }
    }
}
