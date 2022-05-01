//
//  PaymentsController.swift
//  TestApp WatchKit Extension
//
//  Created by Ridhi Jain on 24/04/22.
//

import Foundation
import WatchKit

class PaymentsController: WKInterfaceController{
    @IBOutlet var paymentTable: WKInterfaceTable!
    
    let paymentFeatures = ["New Payment", "Transfers", "Bills", "Rewards"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        loadPaymentActions()
    }
    
    override func willActivate() {
        
    }
    
    override func didDeactivate() {
        
    }
    
    private func loadPaymentActions(){
        paymentTable.setNumberOfRows(paymentFeatures.count, withRowType: "FeatureController")
        for(index, rowModel) in paymentFeatures.enumerated(){
            if let featureController = paymentTable.rowController(at: index) as? FeatureController {
                featureController.paymentActions.setText(rowModel)
            }
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        pushController(withName: "enterPin", context: nil)
    }
}
