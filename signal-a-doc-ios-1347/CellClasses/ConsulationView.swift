//
/**
 *
 *@copyright : ToXSL Technologies Pvt. Ltd. < www.toxsl.com >
 *@author     : Shiv Charan Panjeta < shiv@toxsl.com >
 *
 * All Rights Reserved.
 * Proprietary and confidential :  All information contained herein is, and remains
 * the property of ToXSL Technologies Pvt. Ltd. and its partners.
 * Unauthorized copying of this file, via any medium is strictly prohibited.
 */

import UIKit
import IQKeyboardManagerSwift
 
class ConsulationView: UIView {
    
    //MARK:- Outlets
    var objectParent = ConsultationTypeVC()
    class func loadNib() -> ConsulationView? {
        if let customView = Bundle.main.loadNibNamed("ConsulationView", owner: self, options: nil)?.first as? ConsulationView {
            return customView
        } else {
            return nil
        }
    }
    func setup(parentView: UIView, completion:@escaping()->Void) {
        guard let objParentController = parentView.viewContainingController() as? ConsultationTypeVC else {
            return
        }
        objectParent = objParentController
        completion()
    }
    
    //MARK:- Actions
    @IBAction func actionBack(_ sender: UIButton) {
        objectParent.vwForTable.isHidden = false
        objectParent.vwMain.isHidden = true
    }
    
    @IBAction func actionCross(_ sender: UIButton) {
        objectParent.dismiss()
    }
    
    @IBAction func actionContinue(_ sender: UIButton) {
        KAppDelegate.window?.rootViewController?.dismiss(animated: true, completion: {
            confirmStatusDelegate?.bookingConfirmed()
        })
    }
}


